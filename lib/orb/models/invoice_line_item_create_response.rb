# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::InvoiceLineItems#create
    class InvoiceLineItemCreateResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for this line item.
      #
      #   @return [String]
      required :id, String

      # @!attribute adjusted_subtotal
      #   The line amount after any adjustments and before overage conversion, credits and
      #   partial invoicing.
      #
      #   @return [String]
      required :adjusted_subtotal, String

      # @!attribute adjustments
      #   All adjustments applied to the line item in the order they were applied based on
      #   invoice calculations (ie. usage discounts -> amount discounts -> percentage
      #   discounts -> minimums -> maximums).
      #
      #   @return [Array<Orb::Models::MonetaryUsageDiscountAdjustment, Orb::Models::MonetaryAmountDiscountAdjustment, Orb::Models::MonetaryPercentageDiscountAdjustment, Orb::Models::MonetaryMinimumAdjustment, Orb::Models::MonetaryMaximumAdjustment>]
      required :adjustments,
               -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::InvoiceLineItemCreateResponse::Adjustment] }

      # @!attribute amount
      #   The final amount for a line item after all adjustments and pre paid credits have
      #   been applied.
      #
      #   @return [String]
      required :amount, String

      # @!attribute credits_applied
      #   The number of prepaid credits applied.
      #
      #   @return [String]
      required :credits_applied, String

      # @!attribute discount
      #   @deprecated
      #
      #   This field is deprecated in favor of `adjustments`
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      required :discount, union: -> { Orb::Discount }, nil?: true

      # @!attribute end_date
      #   The end date of the range of time applied for this line item's price.
      #
      #   @return [Time]
      required :end_date, Time

      # @!attribute filter
      #   An additional filter that was used to calculate the usage for this line item.
      #
      #   @return [String, nil]
      required :filter, String, nil?: true

      # @!attribute grouping
      #   [DEPRECATED] For configured prices that are split by a grouping key, this will
      #   be populated with the key and a value. The `amount` and `subtotal` will be the
      #   values for this particular grouping.
      #
      #   @return [String, nil]
      required :grouping, String, nil?: true

      # @!attribute maximum
      #   @deprecated
      #
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [Orb::Models::Maximum, nil]
      required :maximum, -> { Orb::Maximum }, nil?: true

      # @!attribute maximum_amount
      #   @deprecated
      #
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [String, nil]
      required :maximum_amount, String, nil?: true

      # @!attribute minimum
      #   @deprecated
      #
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [Orb::Models::Minimum, nil]
      required :minimum, -> { Orb::Minimum }, nil?: true

      # @!attribute minimum_amount
      #   @deprecated
      #
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [String, nil]
      required :minimum_amount, String, nil?: true

      # @!attribute name
      #   The name of the price associated with this line item.
      #
      #   @return [String]
      required :name, String

      # @!attribute partially_invoiced_amount
      #   Any amount applied from a partial invoice
      #
      #   @return [String]
      required :partially_invoiced_amount, String

      # @!attribute price
      #   The Price resource represents a price that can be billed on a subscription,
      #   resulting in a charge on an invoice in the form of an invoice line item. Prices
      #   take a quantity and determine an amount to bill.
      #
      #   Orb supports a few different pricing models out of the box. Each of these models
      #   is serialized differently in a given Price object. The model_type field
      #   determines the key for the configuration object that is present.
      #
      #   For more on the types of prices, see
      #   [the core concepts documentation](/core-concepts#plan-and-price)
      #
      #   @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::GroupedWithMinMaxThresholds]
      required :price, union: -> { Orb::Price }

      # @!attribute quantity
      #   Either the fixed fee quantity or the usage during the service period.
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute start_date
      #   The start date of the range of time applied for this line item's price.
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute sub_line_items
      #   For complex pricing structures, the line item can be broken down further in
      #   `sub_line_items`.
      #
      #   @return [Array<Orb::Models::MatrixSubLineItem, Orb::Models::TierSubLineItem, Orb::Models::OtherSubLineItem>]
      required :sub_line_items,
               -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem] }

      # @!attribute subtotal
      #   The line amount before before any adjustments.
      #
      #   @return [String]
      required :subtotal, String

      # @!attribute tax_amounts
      #   An array of tax rates and their incurred tax amounts. Empty if no tax
      #   integration is configured.
      #
      #   @return [Array<Orb::Models::TaxAmount>]
      required :tax_amounts, -> { Orb::Internal::Type::ArrayOf[Orb::TaxAmount] }

      # @!attribute usage_customer_ids
      #   A list of customer ids that were used to calculate the usage for this line item.
      #
      #   @return [Array<String>, nil]
      required :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(id:, adjusted_subtotal:, adjustments:, amount:, credits_applied:, discount:, end_date:, filter:, grouping:, maximum:, maximum_amount:, minimum:, minimum_amount:, name:, partially_invoiced_amount:, price:, quantity:, start_date:, sub_line_items:, subtotal:, tax_amounts:, usage_customer_ids:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceLineItemCreateResponse} for more details.
      #
      #   @param id [String] A unique ID for this line item.
      #
      #   @param adjusted_subtotal [String] The line amount after any adjustments and before overage conversion, credits and
      #
      #   @param adjustments [Array<Orb::Models::MonetaryUsageDiscountAdjustment, Orb::Models::MonetaryAmountDiscountAdjustment, Orb::Models::MonetaryPercentageDiscountAdjustment, Orb::Models::MonetaryMinimumAdjustment, Orb::Models::MonetaryMaximumAdjustment>] All adjustments applied to the line item in the order they were applied based on
      #
      #   @param amount [String] The final amount for a line item after all adjustments and pre paid credits have
      #
      #   @param credits_applied [String] The number of prepaid credits applied.
      #
      #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil] This field is deprecated in favor of `adjustments`
      #
      #   @param end_date [Time] The end date of the range of time applied for this line item's price.
      #
      #   @param filter [String, nil] An additional filter that was used to calculate the usage for this line item.
      #
      #   @param grouping [String, nil] [DEPRECATED] For configured prices that are split by a grouping key, this will b
      #
      #   @param maximum [Orb::Models::Maximum, nil] This field is deprecated in favor of `adjustments`.
      #
      #   @param maximum_amount [String, nil] This field is deprecated in favor of `adjustments`.
      #
      #   @param minimum [Orb::Models::Minimum, nil] This field is deprecated in favor of `adjustments`.
      #
      #   @param minimum_amount [String, nil] This field is deprecated in favor of `adjustments`.
      #
      #   @param name [String] The name of the price associated with this line item.
      #
      #   @param partially_invoiced_amount [String] Any amount applied from a partial invoice
      #
      #   @param price [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::GroupedWithMinMaxThresholds] The Price resource represents a price that can be billed on a subscription, resu
      #
      #   @param quantity [Float] Either the fixed fee quantity or the usage during the service period.
      #
      #   @param start_date [Time] The start date of the range of time applied for this line item's price.
      #
      #   @param sub_line_items [Array<Orb::Models::MatrixSubLineItem, Orb::Models::TierSubLineItem, Orb::Models::OtherSubLineItem>] For complex pricing structures, the line item can be broken down further in `sub
      #
      #   @param subtotal [String] The line amount before before any adjustments.
      #
      #   @param tax_amounts [Array<Orb::Models::TaxAmount>] An array of tax rates and their incurred tax amounts. Empty if no tax integratio
      #
      #   @param usage_customer_ids [Array<String>, nil] A list of customer ids that were used to calculate the usage for this line item.

      module Adjustment
        extend Orb::Internal::Type::Union

        discriminator :adjustment_type

        variant :usage_discount, -> { Orb::MonetaryUsageDiscountAdjustment }

        variant :amount_discount, -> { Orb::MonetaryAmountDiscountAdjustment }

        variant :percentage_discount, -> { Orb::MonetaryPercentageDiscountAdjustment }

        variant :minimum, -> { Orb::MonetaryMinimumAdjustment }

        variant :maximum, -> { Orb::MonetaryMaximumAdjustment }

        # @!method self.variants
        #   @return [Array(Orb::Models::MonetaryUsageDiscountAdjustment, Orb::Models::MonetaryAmountDiscountAdjustment, Orb::Models::MonetaryPercentageDiscountAdjustment, Orb::Models::MonetaryMinimumAdjustment, Orb::Models::MonetaryMaximumAdjustment)]
      end

      module SubLineItem
        extend Orb::Internal::Type::Union

        discriminator :type

        variant :matrix, -> { Orb::MatrixSubLineItem }

        variant :tier, -> { Orb::TierSubLineItem }

        variant :"'null'", -> { Orb::OtherSubLineItem }

        # @!method self.variants
        #   @return [Array(Orb::Models::MatrixSubLineItem, Orb::Models::TierSubLineItem, Orb::Models::OtherSubLineItem)]
      end
    end
  end
end
