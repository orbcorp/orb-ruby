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
      #   @return [Array<Orb::Models::MonetaryUsageDiscountAdjustment, Orb::Models::MonetaryAmountDiscountAdjustment, Orb::Models::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount, Orb::Models::MonetaryMinimumAdjustment, Orb::Models::MonetaryMaximumAdjustment>]
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
      #   @return [Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput]
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
      #   The line amount before any adjustments.
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

      # @!method initialize(id:, adjusted_subtotal:, adjustments:, amount:, credits_applied:, end_date:, filter:, grouping:, name:, partially_invoiced_amount:, price:, quantity:, start_date:, sub_line_items:, subtotal:, tax_amounts:, usage_customer_ids:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceLineItemCreateResponse} for more details.
      #
      #   @param id [String] A unique ID for this line item.
      #
      #   @param adjusted_subtotal [String] The line amount after any adjustments and before overage conversion, credits and
      #
      #   @param adjustments [Array<Orb::Models::MonetaryUsageDiscountAdjustment, Orb::Models::MonetaryAmountDiscountAdjustment, Orb::Models::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount, Orb::Models::MonetaryMinimumAdjustment, Orb::Models::MonetaryMaximumAdjustment>] All adjustments applied to the line item in the order they were applied based on
      #
      #   @param amount [String] The final amount for a line item after all adjustments and pre paid credits have
      #
      #   @param credits_applied [String] The number of prepaid credits applied.
      #
      #   @param end_date [Time] The end date of the range of time applied for this line item's price.
      #
      #   @param filter [String, nil] An additional filter that was used to calculate the usage for this line item.
      #
      #   @param grouping [String, nil] [DEPRECATED] For configured prices that are split by a grouping key, this will b
      #
      #   @param name [String] The name of the price associated with this line item.
      #
      #   @param partially_invoiced_amount [String] Any amount applied from a partial invoice
      #
      #   @param price [Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput] The Price resource represents a price that can be billed on a subscription, resu
      #
      #   @param quantity [Float] Either the fixed fee quantity or the usage during the service period.
      #
      #   @param start_date [Time] The start date of the range of time applied for this line item's price.
      #
      #   @param sub_line_items [Array<Orb::Models::MatrixSubLineItem, Orb::Models::TierSubLineItem, Orb::Models::OtherSubLineItem>] For complex pricing structures, the line item can be broken down further in `sub
      #
      #   @param subtotal [String] The line amount before any adjustments.
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

        variant :tiered_percentage_discount,
                -> { Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount }

        variant :minimum, -> { Orb::MonetaryMinimumAdjustment }

        variant :maximum, -> { Orb::MonetaryMaximumAdjustment }

        class TieredPercentageDiscount < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute adjustment_type
          #
          #   @return [Symbol, :tiered_percentage_discount]
          required :adjustment_type, const: :tiered_percentage_discount

          # @!attribute amount
          #   The value applied by an adjustment.
          #
          #   @return [String]
          required :amount, String

          # @!attribute applies_to_price_ids
          #   @deprecated
          #
          #   The price IDs that this adjustment applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute filters
          #   The filters that determine which prices to apply this adjustment to.
          #
          #   @return [Array<Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter>]
          required :filters,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter] }

          # @!attribute is_invoice_level
          #   True for adjustments that apply to an entire invoice, false for adjustments that
          #   apply to only one price.
          #
          #   @return [Boolean]
          required :is_invoice_level, Orb::Internal::Type::Boolean

          # @!attribute reason
          #   The reason for the adjustment.
          #
          #   @return [String, nil]
          required :reason, String, nil?: true

          # @!attribute replaces_adjustment_id
          #   The adjustment id this adjustment replaces. This adjustment will take the place
          #   of the replaced adjustment in plan version migrations.
          #
          #   @return [String, nil]
          required :replaces_adjustment_id, String, nil?: true

          # @!attribute tiers
          #   The ordered, contiguous bands of cumulative eligible spend, each discounted at
          #   its own percentage (progressive fill-a-tier), applied to the prices this
          #   adjustment covers in a given billing period.
          #
          #   @return [Array<Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Tier] }

          # @!method initialize(id:, amount:, applies_to_price_ids:, filters:, is_invoice_level:, reason:, replaces_adjustment_id:, tiers:, adjustment_type: :tiered_percentage_discount)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount}
          #   for more details.
          #
          #   @param id [String]
          #
          #   @param amount [String] The value applied by an adjustment.
          #
          #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
          #
          #   @param filters [Array<Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter>] The filters that determine which prices to apply this adjustment to.
          #
          #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invoice, false for adjustments that
          #
          #   @param reason [String, nil] The reason for the adjustment.
          #
          #   @param replaces_adjustment_id [String, nil] The adjustment id this adjustment replaces. This adjustment will take the place
          #
          #   @param tiers [Array<Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Tier>] The ordered, contiguous bands of cumulative eligible spend, each discounted at i
          #
          #   @param adjustment_type [Symbol, :tiered_percentage_discount]

          class Filter < Orb::Internal::Type::BaseModel
            # @!attribute field
            #   The property of the price to filter on.
            #
            #   @return [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field]
            required :field,
                     enum: -> { Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field }

            # @!attribute operator
            #   Should prices that match the filter be included or excluded.
            #
            #   @return [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator]
            required :operator,
                     enum: -> { Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator }

            # @!attribute values
            #   The IDs or values that match this filter.
            #
            #   @return [Array<String>]
            required :values, Orb::Internal::Type::ArrayOf[String]

            # @!method initialize(field:, operator:, values:)
            #   @param field [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field] The property of the price to filter on.
            #
            #   @param operator [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
            #
            #   @param values [Array<String>] The IDs or values that match this filter.

            # The property of the price to filter on.
            #
            # @see Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter#field
            module Field
              extend Orb::Internal::Type::Enum

              PRICE_ID = :price_id
              ITEM_ID = :item_id
              PRICE_TYPE = :price_type
              CURRENCY = :currency
              PRICING_UNIT_ID = :pricing_unit_id

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Should prices that match the filter be included or excluded.
            #
            # @see Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter#operator
            module Operator
              extend Orb::Internal::Type::Enum

              INCLUDES = :includes
              EXCLUDES = :excludes

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Tier < Orb::Internal::Type::BaseModel
            # @!attribute lower_bound
            #   Exclusive lower bound of cumulative spend for this tier.
            #
            #   @return [Float]
            required :lower_bound, Float

            # @!attribute percentage
            #   The percentage (between 0 and 1) discounted from spend that falls within this
            #   tier.
            #
            #   @return [Float]
            required :percentage, Float

            # @!attribute upper_bound
            #   Inclusive upper bound of cumulative spend for this tier; null for the final
            #   open-ended tier.
            #
            #   @return [Float, nil]
            optional :upper_bound, Float, nil?: true

            # @!method initialize(lower_bound:, percentage:, upper_bound: nil)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Tier}
            #   for more details.
            #
            #   One band of a tiered percentage discount. Bounds are denominated in the
            #   discount's currency. `lower_bound` is the exclusive start of the band and
            #   `upper_bound` is the inclusive end; `upper_bound` is null only for the
            #   open-ended final tier.
            #
            #   @param lower_bound [Float] Exclusive lower bound of cumulative spend for this tier.
            #
            #   @param percentage [Float] The percentage (between 0 and 1) discounted from spend that falls within this ti
            #
            #   @param upper_bound [Float, nil] Inclusive upper bound of cumulative spend for this tier; null for the final open
          end
        end

        # @!method self.variants
        #   @return [Array(Orb::Models::MonetaryUsageDiscountAdjustment, Orb::Models::MonetaryAmountDiscountAdjustment, Orb::Models::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount, Orb::Models::MonetaryMinimumAdjustment, Orb::Models::MonetaryMaximumAdjustment)]
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
