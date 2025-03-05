# frozen_string_literal: true

module Orb
  module Models
    class AddSubscriptionPriceParams < Orb::BaseModel
      # @!attribute allocation_price
      #   The definition of a new allocation price to create and add to the subscription.
      #
      #   @return [Orb::Models::AddSubscriptionPriceParams::AllocationPrice, nil]
      optional :allocation_price, -> { Orb::Models::AddSubscriptionPriceParams::AllocationPrice }, nil?: true

      # @!attribute discounts
      #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
      #     price.
      #
      #   @return [Array<Orb::Models::AddSubscriptionPriceParams::Discount>, nil]
      optional :discounts, -> { Orb::ArrayOf[Orb::Models::AddSubscriptionPriceParams::Discount] }, nil?: true

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
      #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
      optional :price, union: -> { Orb::Models::AddSubscriptionPriceParams::Price }, nil?: true

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
      #   # @param allocation_price [Orb::Models::AddSubscriptionPriceParams::AllocationPrice, nil]
      #   # @param discounts [Array<Orb::Models::AddSubscriptionPriceParams::Discount>, nil]
      #   # @param end_date [Time, nil]
      #   # @param external_price_id [String, nil]
      #   # @param maximum_amount [String, nil]
      #   # @param minimum_amount [String, nil]
      #   # @param plan_phase_order [Integer, nil]
      #   # @param price [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
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

      class AllocationPrice < Orb::BaseModel
        # @!attribute amount
        #   An amount of the currency to allocate to the customer at the specified cadence.
        #
        #   @return [String]
        required :amount, String

        # @!attribute cadence
        #   The cadence at which to allocate the amount to the customer.
        #
        #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::AllocationPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::AddSubscriptionPriceParams::AllocationPrice::Cadence }

        # @!attribute currency
        #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
        #     this price.
        #
        #   @return [String]
        required :currency, String

        # @!attribute expires_at_end_of_cadence
        #   Whether the allocated amount should expire at the end of the cadence or roll
        #     over to the next period.
        #
        #   @return [Boolean]
        required :expires_at_end_of_cadence, Orb::BooleanModel

        # @!parse
        #   # The definition of a new allocation price to create and add to the subscription.
        #   #
        #   # @param amount [String]
        #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::AllocationPrice::Cadence]
        #   # @param currency [String]
        #   # @param expires_at_end_of_cadence [Boolean]
        #   #
        #   def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # The cadence at which to allocate the amount to the customer.
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class Discount < Orb::BaseModel
        # @!attribute discount_type
        #
        #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Discount::DiscountType]
        required :discount_type, enum: -> { Orb::Models::AddSubscriptionPriceParams::Discount::DiscountType }

        # @!attribute amount_discount
        #   Only available if discount_type is `amount`.
        #
        #   @return [String, nil]
        optional :amount_discount, String, nil?: true

        # @!attribute percentage_discount
        #   Only available if discount_type is `percentage`. This is a number between 0
        #     and 1.
        #
        #   @return [Float, nil]
        optional :percentage_discount, Float, nil?: true

        # @!attribute usage_discount
        #   Only available if discount_type is `usage`. Number of usage units that this
        #     discount is for
        #
        #   @return [Float, nil]
        optional :usage_discount, Float, nil?: true

        # @!parse
        #   # @param discount_type [Symbol, Orb::Models::AddSubscriptionPriceParams::Discount::DiscountType]
        #   # @param amount_discount [String, nil]
        #   # @param percentage_discount [Float, nil]
        #   # @param usage_discount [Float, nil]
        #   #
        #   def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case discount_type
        # in :percentage
        #   # ...
        # in :usage
        #   # ...
        # in :amount
        #   # ...
        # end
        # ```
        class DiscountType < Orb::Enum
          PERCENTAGE = :percentage
          USAGE = :usage
          AMOUNT = :amount

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @abstract
      #
      # The definition of a new price to create and add to the subscription.
      #
      # @example
      # ```ruby
      # case price
      # in {
      #   model_type: "unit",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice ...
      # in {
      #   model_type: "package",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice ...
      # in {
      #   model_type: "matrix",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::Cadence,
      #   item_id: String,
      #   matrix_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice ...
      # in {
      #   model_type: "tiered",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice ...
      # in {
      #   model_type: "tiered_bps",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice ...
      # in {
      #   model_type: "bps",
      #   bps_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig,
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::Cadence,
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice ...
      # in {
      #   model_type: "bulk_bps",
      #   bulk_bps_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::Cadence,
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice ...
      # in {
      #   model_type: "bulk",
      #   bulk_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig,
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::Cadence,
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice ...
      # in {
      #   model_type: "threshold_total_amount",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice ...
      # in {
      #   model_type: "tiered_package",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice ...
      # in {
      #   model_type: "tiered_with_minimum",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice ...
      # in {
      #   model_type: "unit_with_percent",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice ...
      # in {
      #   model_type: "package_with_allocation",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice ...
      # in {
      #   model_type: "tiered_with_proration",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice ...
      # in {
      #   model_type: "unit_with_proration",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice ...
      # in {
      #   model_type: "grouped_allocation",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::Cadence,
      #   grouped_allocation_config: ^(Orb::HashOf[Orb::Unknown]),
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice ...
      # in {
      #   model_type: "grouped_with_prorated_minimum",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence,
      #   grouped_with_prorated_minimum_config: ^(Orb::HashOf[Orb::Unknown]),
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice ...
      # in {
      #   model_type: "bulk_with_proration",
      #   bulk_with_proration_config: ^(Orb::HashOf[Orb::Unknown]),
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::Cadence,
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice ...
      # in {
      #   model_type: "scalable_matrix_with_unit_pricing",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice ...
      # in {
      #   model_type: "scalable_matrix_with_tiered_pricing",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence,
      #   item_id: String,
      #   name: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice ...
      # in {
      #   model_type: "cumulative_grouped_bulk",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence,
      #   cumulative_grouped_bulk_config: ^(Orb::HashOf[Orb::Unknown]),
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice ...
      # in {
      #   model_type: "max_group_tiered_package",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence,
      #   item_id: String,
      #   max_group_tiered_package_config: ^(Orb::HashOf[Orb::Unknown])
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice ...
      # in {
      #   model_type: "grouped_with_metered_minimum",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence,
      #   grouped_with_metered_minimum_config: ^(Orb::HashOf[Orb::Unknown]),
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice ...
      # in {
      #   model_type: "matrix_with_display_name",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence,
      #   item_id: String,
      #   matrix_with_display_name_config: ^(Orb::HashOf[Orb::Unknown])
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice ...
      # in {
      #   model_type: "grouped_tiered_package",
      #   cadence: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence,
      #   grouped_tiered_package_config: ^(Orb::HashOf[Orb::Unknown]),
      #   item_id: String
      # }
      #   # Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case price
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice
      #   # ...
      # in Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
      #   # ...
      # end
      # ```
      class Price < Orb::Union
        discriminator :model_type

        variant :unit, -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice }

        variant :package, -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice }

        variant :matrix, -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice }

        variant :tiered, -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice }

        variant :tiered_bps, -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice }

        variant :bps, -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice }

        variant :bulk_bps, -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice }

        variant :bulk, -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice }

        variant :threshold_total_amount,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice }

        variant :tiered_package,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice }

        variant :tiered_with_minimum,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice }

        variant :unit_with_percent,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice }

        variant :package_with_allocation,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice }

        variant :tiered_with_proration,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice }

        variant :unit_with_proration,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice }

        variant :grouped_allocation,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice }

        variant :grouped_with_prorated_minimum,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice }

        variant :bulk_with_proration,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice }

        variant :scalable_matrix_with_unit_pricing,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice }

        variant :scalable_matrix_with_tiered_pricing,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice }

        variant :cumulative_grouped_bulk,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice }

        variant :max_group_tiered_package,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice }

        variant :grouped_with_metered_minimum,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice }

        variant :matrix_with_display_name,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice }

        variant :grouped_tiered_package,
                -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice }

        class NewSubscriptionUnitPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :unit]
          required :model_type, const: :unit

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute unit_config
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig]
          required :unit_config,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig }

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param unit_config [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :unit]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     unit_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :unit,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class UnitConfig < Orb::BaseModel
            # @!attribute unit_amount
            #   Rate per unit of usage
            #
            #   @return [String]
            required :unit_amount, String

            # @!parse
            #   # @param unit_amount [String]
            #   #
            #   def initialize(unit_amount:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionPackagePrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :package]
          required :model_type, const: :package

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute package_config
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig]
          required :package_config,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig }

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param package_config [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :package]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     package_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :package,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class PackageConfig < Orb::BaseModel
            # @!attribute package_amount
            #   A currency amount to rate usage by
            #
            #   @return [String]
            required :package_amount, String

            # @!attribute package_size
            #   An integer amount to represent package size. For example, 1000 here would divide
            #     usage by 1000 before multiplying by package_amount in rating
            #
            #   @return [Integer]
            required :package_size, Integer

            # @!parse
            #   # @param package_amount [String]
            #   # @param package_size [Integer]
            #   #
            #   def initialize(package_amount:, package_size:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionMatrixPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute matrix_config
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig]
          required :matrix_config,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig }

          # @!attribute model_type
          #
          #   @return [Symbol, :matrix]
          required :model_type, const: :matrix

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::Cadence]
          #   # @param item_id [String]
          #   # @param matrix_config [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :matrix]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     matrix_config:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :matrix,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class MatrixConfig < Orb::BaseModel
            # @!attribute default_unit_amount
            #   Default per unit rate for any usage not bucketed into a specified matrix_value
            #
            #   @return [String]
            required :default_unit_amount, String

            # @!attribute dimensions
            #   One or two event property values to evaluate matrix groups by
            #
            #   @return [Array<String, nil>]
            required :dimensions, Orb::ArrayOf[String, nil?: true]

            # @!attribute matrix_values
            #   Matrix values for specified matrix grouping keys
            #
            #   @return [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]
            required :matrix_values,
                     -> { Orb::ArrayOf[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue] }

            # @!parse
            #   # @param default_unit_amount [String]
            #   # @param dimensions [Array<String, nil>]
            #   # @param matrix_values [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]
            #   #
            #   def initialize(default_unit_amount:, dimensions:, matrix_values:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            class MatrixValue < Orb::BaseModel
              # @!attribute dimension_values
              #   One or two matrix keys to filter usage to this Matrix value by. For example,
              #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
              #     instance tier.
              #
              #   @return [Array<String, nil>]
              required :dimension_values, Orb::ArrayOf[String, nil?: true]

              # @!attribute unit_amount
              #   Unit price for the specified dimension_values
              #
              #   @return [String]
              required :unit_amount, String

              # @!parse
              #   # @param dimension_values [Array<String, nil>]
              #   # @param unit_amount [String]
              #   #
              #   def initialize(dimension_values:, unit_amount:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionTieredPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :tiered]
          required :model_type, const: :tiered

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute tiered_config
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig]
          required :tiered_config,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig }

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param tiered_config [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :tiered]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     tiered_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :tiered,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class TieredConfig < Orb::BaseModel
            # @!attribute tiers
            #   Tiers for rating based on total usage quantities into the specified tier
            #
            #   @return [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]
            required :tiers,
                     -> { Orb::ArrayOf[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier] }

            # @!parse
            #   # @param tiers [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]
            #   #
            #   def initialize(tiers:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            class Tier < Orb::BaseModel
              # @!attribute first_unit
              #   Inclusive tier starting value
              #
              #   @return [Float]
              required :first_unit, Float

              # @!attribute unit_amount
              #   Amount per unit
              #
              #   @return [String]
              required :unit_amount, String

              # @!attribute last_unit
              #   Exclusive tier ending value. If null, this is treated as the last tier
              #
              #   @return [Float, nil]
              optional :last_unit, Float, nil?: true

              # @!parse
              #   # @param first_unit [Float]
              #   # @param unit_amount [String]
              #   # @param last_unit [Float, nil]
              #   #
              #   def initialize(first_unit:, unit_amount:, last_unit: nil, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionTieredBpsPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :tiered_bps]
          required :model_type, const: :tiered_bps

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute tiered_bps_config
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
          required :tiered_bps_config,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig }

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param tiered_bps_config [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :tiered_bps]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     tiered_bps_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :tiered_bps,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class TieredBpsConfig < Orb::BaseModel
            # @!attribute tiers
            #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
            #     tiers
            #
            #   @return [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]
            required :tiers,
                     -> { Orb::ArrayOf[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier] }

            # @!parse
            #   # @param tiers [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]
            #   #
            #   def initialize(tiers:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            class Tier < Orb::BaseModel
              # @!attribute bps
              #   Per-event basis point rate
              #
              #   @return [Float]
              required :bps, Float

              # @!attribute minimum_amount
              #   Inclusive tier starting value
              #
              #   @return [String]
              required :minimum_amount, String

              # @!attribute maximum_amount
              #   Exclusive tier ending value
              #
              #   @return [String, nil]
              optional :maximum_amount, String, nil?: true

              # @!attribute per_unit_maximum
              #   Per unit maximum to charge
              #
              #   @return [String, nil]
              optional :per_unit_maximum, String, nil?: true

              # @!parse
              #   # @param bps [Float]
              #   # @param minimum_amount [String]
              #   # @param maximum_amount [String, nil]
              #   # @param per_unit_maximum [String, nil]
              #   #
              #   def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionBpsPrice < Orb::BaseModel
          # @!attribute bps_config
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig]
          required :bps_config,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig }

          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :bps]
          required :model_type, const: :bps

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param bps_config [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig]
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :bps]
          #   #
          #   def initialize(
          #     bps_config:,
          #     cadence:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :bps,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          class BpsConfig < Orb::BaseModel
            # @!attribute bps
            #   Basis point take rate per event
            #
            #   @return [Float]
            required :bps, Float

            # @!attribute per_unit_maximum
            #   Optional currency amount maximum to cap spend per event
            #
            #   @return [String, nil]
            optional :per_unit_maximum, String, nil?: true

            # @!parse
            #   # @param bps [Float]
            #   # @param per_unit_maximum [String, nil]
            #   #
            #   def initialize(bps:, per_unit_maximum: nil, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionBulkBpsPrice < Orb::BaseModel
          # @!attribute bulk_bps_config
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
          required :bulk_bps_config,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig }

          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :bulk_bps]
          required :model_type, const: :bulk_bps

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param bulk_bps_config [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :bulk_bps]
          #   #
          #   def initialize(
          #     bulk_bps_config:,
          #     cadence:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :bulk_bps,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          class BulkBpsConfig < Orb::BaseModel
            # @!attribute tiers
            #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
            #     tier based on total volume
            #
            #   @return [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]
            required :tiers,
                     -> { Orb::ArrayOf[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier] }

            # @!parse
            #   # @param tiers [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]
            #   #
            #   def initialize(tiers:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            class Tier < Orb::BaseModel
              # @!attribute bps
              #   Basis points to rate on
              #
              #   @return [Float]
              required :bps, Float

              # @!attribute maximum_amount
              #   Upper bound for tier
              #
              #   @return [String, nil]
              optional :maximum_amount, String, nil?: true

              # @!attribute per_unit_maximum
              #   The maximum amount to charge for any one event
              #
              #   @return [String, nil]
              optional :per_unit_maximum, String, nil?: true

              # @!parse
              #   # @param bps [Float]
              #   # @param maximum_amount [String, nil]
              #   # @param per_unit_maximum [String, nil]
              #   #
              #   def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end
          end

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionBulkPrice < Orb::BaseModel
          # @!attribute bulk_config
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig]
          required :bulk_config,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig }

          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :bulk]
          required :model_type, const: :bulk

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param bulk_config [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig]
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :bulk]
          #   #
          #   def initialize(
          #     bulk_config:,
          #     cadence:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :bulk,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          class BulkConfig < Orb::BaseModel
            # @!attribute tiers
            #   Bulk tiers for rating based on total usage volume
            #
            #   @return [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]
            required :tiers,
                     -> { Orb::ArrayOf[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier] }

            # @!parse
            #   # @param tiers [Array<Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]
            #   #
            #   def initialize(tiers:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            class Tier < Orb::BaseModel
              # @!attribute unit_amount
              #   Amount per unit
              #
              #   @return [String]
              required :unit_amount, String

              # @!attribute maximum_units
              #   Upper bound for this tier
              #
              #   @return [Float, nil]
              optional :maximum_units, Float, nil?: true

              # @!parse
              #   # @param unit_amount [String]
              #   # @param maximum_units [Float, nil]
              #   #
              #   def initialize(unit_amount:, maximum_units: nil, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end
          end

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :threshold_total_amount]
          required :model_type, const: :threshold_total_amount

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute threshold_total_amount_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :threshold_total_amount_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :threshold_total_amount]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     threshold_total_amount_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :threshold_total_amount,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionTieredPackagePrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :tiered_package]
          required :model_type, const: :tiered_package

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute tiered_package_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :tiered_package_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param tiered_package_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :tiered_package]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     tiered_package_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :tiered_package,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :tiered_with_minimum]
          required :model_type, const: :tiered_with_minimum

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute tiered_with_minimum_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :tiered_with_minimum_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :tiered_with_minimum]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     tiered_with_minimum_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :tiered_with_minimum,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :unit_with_percent]
          required :model_type, const: :unit_with_percent

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute unit_with_percent_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :unit_with_percent_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :unit_with_percent]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     unit_with_percent_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :unit_with_percent,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :package_with_allocation]
          required :model_type, const: :package_with_allocation

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute package_with_allocation_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :package_with_allocation_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :package_with_allocation]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     package_with_allocation_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :package_with_allocation,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :tiered_with_proration]
          required :model_type, const: :tiered_with_proration

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute tiered_with_proration_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :tiered_with_proration_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :tiered_with_proration]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     tiered_with_proration_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :tiered_with_proration,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :unit_with_proration]
          required :model_type, const: :unit_with_proration

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute unit_with_proration_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :unit_with_proration_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :unit_with_proration]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     unit_with_proration_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :unit_with_proration,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::Cadence }

          # @!attribute grouped_allocation_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :grouped_allocation_config, Orb::HashOf[Orb::Unknown]

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :grouped_allocation]
          required :model_type, const: :grouped_allocation

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
          #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :grouped_allocation]
          #   #
          #   def initialize(
          #     cadence:,
          #     grouped_allocation_config:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :grouped_allocation,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence }

          # @!attribute grouped_with_prorated_minimum_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :grouped_with_prorated_minimum_config, Orb::HashOf[Orb::Unknown]

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :grouped_with_prorated_minimum]
          required :model_type, const: :grouped_with_prorated_minimum

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
          #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :grouped_with_prorated_minimum]
          #   #
          #   def initialize(
          #     cadence:,
          #     grouped_with_prorated_minimum_config:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :grouped_with_prorated_minimum,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
          # @!attribute bulk_with_proration_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :bulk_with_proration_config, Orb::HashOf[Orb::Unknown]

          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :bulk_with_proration]
          required :model_type, const: :bulk_with_proration

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :bulk_with_proration]
          #   #
          #   def initialize(
          #     bulk_with_proration_config:,
          #     cadence:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :bulk_with_proration,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :scalable_matrix_with_unit_pricing]
          required :model_type, const: :scalable_matrix_with_unit_pricing

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute scalable_matrix_with_unit_pricing_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :scalable_matrix_with_unit_pricing_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :scalable_matrix_with_unit_pricing]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     scalable_matrix_with_unit_pricing_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :scalable_matrix_with_unit_pricing,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :scalable_matrix_with_tiered_pricing]
          required :model_type, const: :scalable_matrix_with_tiered_pricing

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute scalable_matrix_with_tiered_pricing_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :scalable_matrix_with_tiered_pricing_config, Orb::HashOf[Orb::Unknown]

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     name:,
          #     scalable_matrix_with_tiered_pricing_config:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :scalable_matrix_with_tiered_pricing,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence }

          # @!attribute cumulative_grouped_bulk_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :cumulative_grouped_bulk_config, Orb::HashOf[Orb::Unknown]

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :cumulative_grouped_bulk]
          required :model_type, const: :cumulative_grouped_bulk

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
          #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :cumulative_grouped_bulk]
          #   #
          #   def initialize(
          #     cadence:,
          #     cumulative_grouped_bulk_config:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :cumulative_grouped_bulk,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute max_group_tiered_package_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :max_group_tiered_package_config, Orb::HashOf[Orb::Unknown]

          # @!attribute model_type
          #
          #   @return [Symbol, :max_group_tiered_package]
          required :model_type, const: :max_group_tiered_package

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
          #   # @param item_id [String]
          #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :max_group_tiered_package]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     max_group_tiered_package_config:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :max_group_tiered_package,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence }

          # @!attribute grouped_with_metered_minimum_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :grouped_with_metered_minimum_config, Orb::HashOf[Orb::Unknown]

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :grouped_with_metered_minimum]
          required :model_type, const: :grouped_with_metered_minimum

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
          #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :grouped_with_metered_minimum]
          #   #
          #   def initialize(
          #     cadence:,
          #     grouped_with_metered_minimum_config:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :grouped_with_metered_minimum,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute matrix_with_display_name_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :matrix_with_display_name_config, Orb::HashOf[Orb::Unknown]

          # @!attribute model_type
          #
          #   @return [Symbol, :matrix_with_display_name]
          required :model_type, const: :matrix_with_display_name

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
          #   # @param item_id [String]
          #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :matrix_with_display_name]
          #   #
          #   def initialize(
          #     cadence:,
          #     item_id:,
          #     matrix_with_display_name_config:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :matrix_with_display_name,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence }

          # @!attribute grouped_tiered_package_config
          #
          #   @return [Hash{Symbol=>Object}]
          required :grouped_tiered_package_config, Orb::HashOf[Orb::Unknown]

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #
          #   @return [Symbol, :grouped_tiered_package]
          required :model_type, const: :grouped_tiered_package

          # @!attribute name
          #   The name of the price.
          #
          #   @return [String]
          required :name, String

          # @!attribute billable_metric_id
          #   The id of the billable metric for the price. Only needed if the price is
          #     usage-based.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String, nil?: true

          # @!attribute billed_in_advance
          #   If the Price represents a fixed cost, the price will be billed in-advance if
          #     this is true, and in-arrears if this is false.
          #
          #   @return [Boolean, nil]
          optional :billed_in_advance, Orb::BooleanModel, nil?: true

          # @!attribute billing_cycle_configuration
          #   For custom cadence: specifies the duration of the billing period in days or
          #     months.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
          optional :billing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration },
                   nil?: true

          # @!attribute conversion_rate
          #   The per unit conversion rate of the price currency to the invoicing currency.
          #
          #   @return [Float, nil]
          optional :conversion_rate, Float, nil?: true

          # @!attribute currency
          #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
          #     price is billed.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute external_price_id
          #   An alias for the price.
          #
          #   @return [String, nil]
          optional :external_price_id, String, nil?: true

          # @!attribute fixed_price_quantity
          #   If the Price represents a fixed cost, this represents the quantity of units
          #     applied.
          #
          #   @return [Float, nil]
          optional :fixed_price_quantity, Float, nil?: true

          # @!attribute invoice_grouping_key
          #   The property used to group this price on an invoice
          #
          #   @return [String, nil]
          optional :invoice_grouping_key, String, nil?: true

          # @!attribute invoicing_cycle_configuration
          #   Within each billing cycle, specifies the cadence at which invoices are produced.
          #     If unspecified, a single invoice is produced per billing cycle.
          #
          #   @return [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
          optional :invoicing_cycle_configuration,
                   -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #     by setting the value to `null`, and the entire metadata mapping can be cleared
          #     by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

          # @!attribute reference_id
          #   A transient ID that can be used to reference this price when adding adjustments
          #     in the same API call.
          #
          #   @return [String, nil]
          optional :reference_id, String, nil?: true

          # @!parse
          #   # @param cadence [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
          #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
          #   # @param item_id [String]
          #   # @param name [String]
          #   # @param billable_metric_id [String, nil]
          #   # @param billed_in_advance [Boolean, nil]
          #   # @param billing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
          #   # @param conversion_rate [Float, nil]
          #   # @param currency [String, nil]
          #   # @param external_price_id [String, nil]
          #   # @param fixed_price_quantity [Float, nil]
          #   # @param invoice_grouping_key [String, nil]
          #   # @param invoicing_cycle_configuration [Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
          #   # @param metadata [Hash{Symbol=>String, nil}, nil]
          #   # @param reference_id [String, nil]
          #   # @param model_type [Symbol, :grouped_tiered_package]
          #   #
          #   def initialize(
          #     cadence:,
          #     grouped_tiered_package_config:,
          #     item_id:,
          #     name:,
          #     billable_metric_id: nil,
          #     billed_in_advance: nil,
          #     billing_cycle_configuration: nil,
          #     conversion_rate: nil,
          #     currency: nil,
          #     external_price_id: nil,
          #     fixed_price_quantity: nil,
          #     invoice_grouping_key: nil,
          #     invoicing_cycle_configuration: nil,
          #     metadata: nil,
          #     reference_id: nil,
          #     model_type: :grouped_tiered_package,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence to bill for this price on.
          #
          # @example
          # ```ruby
          # case cadence
          # in :annual
          #   # ...
          # in :semi_annual
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :one_time
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ANNUAL = :annual
            SEMI_ANNUAL = :semi_annual
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            ONE_TIME = :one_time
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

            # @!parse
            #   # For custom cadence: specifies the duration of the billing period in days or
            #   #   months.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoicingCycleConfiguration < Orb::BaseModel
            # @!attribute duration
            #   The duration of the billing period.
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #   The unit of billing period duration.
            #
            #   @return [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
            required :duration_unit,
                     enum: -> { Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

            # @!parse
            #   # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   #   If unspecified, a single invoice is produced per billing cycle.
            #   #
            #   # @param duration [Integer]
            #   # @param duration_unit [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
            #   #
            #   def initialize(duration:, duration_unit:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The unit of billing period duration.
            #
            # @example
            # ```ruby
            # case duration_unit
            # in :day
            #   # ...
            # in :month
            #   # ...
            # end
            # ```
            class DurationUnit < Orb::Enum
              DAY = :day
              MONTH = :month

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end
      end
    end
  end
end
