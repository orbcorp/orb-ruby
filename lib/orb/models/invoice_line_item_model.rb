# frozen_string_literal: true

module Orb
  module Models
    class InvoiceLineItemModel < Orb::BaseModel
      # @!attribute id
      #   A unique ID for this line item.
      #
      #   @return [String]
      required :id, String

      # @!attribute adjusted_subtotal
      #   The line amount after any adjustments and before overage conversion, credits and
      #     partial invoicing.
      #
      #   @return [String]
      required :adjusted_subtotal, String

      # @!attribute adjustments
      #   All adjustments (ie. maximums, minimums, discounts) applied to the line item.
      #
      #   @return [Array<Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment>]
      required :adjustments, -> { Orb::ArrayOf[union: Orb::Models::InvoiceLineItemModel::Adjustment] }

      # @!attribute amount
      #   The final amount for a line item after all adjustments and pre paid credits have
      #     been applied.
      #
      #   @return [String]
      required :amount, String

      # @!attribute credits_applied
      #   The number of prepaid credits applied.
      #
      #   @return [String]
      required :credits_applied, String

      # @!attribute discount
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
      required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
      #     be populated with the key and a value. The `amount` and `subtotal` will be the
      #     values for this particular grouping.
      #
      #   @return [String, nil]
      required :grouping, String, nil?: true

      # @!attribute maximum
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [Orb::Models::MaximumModel, nil]
      required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

      # @!attribute maximum_amount
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [String, nil]
      required :maximum_amount, String, nil?: true

      # @!attribute minimum
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [Orb::Models::MinimumModel, nil]
      required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

      # @!attribute minimum_amount
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
      #   @return [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice, nil]
      required :price, union: -> { Orb::Models::PriceModel }, nil?: true

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
      #     `sub_line_items`.
      #
      #   @return [Array<Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem, Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem, Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem>]
      required :sub_line_items, -> { Orb::ArrayOf[union: Orb::Models::InvoiceLineItemModel::SubLineItem] }

      # @!attribute subtotal
      #   The line amount before before any adjustments.
      #
      #   @return [String]
      required :subtotal, String

      # @!attribute tax_amounts
      #   An array of tax rates and their incurred tax amounts. Empty if no tax
      #     integration is configured.
      #
      #   @return [Array<Orb::Models::TaxAmountModel>]
      required :tax_amounts, -> { Orb::ArrayOf[Orb::Models::TaxAmountModel] }

      # @!attribute usage_customer_ids
      #   A list of customer ids that were used to calculate the usage for this line item.
      #
      #   @return [Array<String>, nil]
      required :usage_customer_ids, Orb::ArrayOf[String], nil?: true

      # @!parse
      #   # @param id [String]
      #   # @param adjusted_subtotal [String]
      #   # @param adjustments [Array<Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment>]
      #   # @param amount [String]
      #   # @param credits_applied [String]
      #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
      #   # @param end_date [Time]
      #   # @param filter [String, nil]
      #   # @param grouping [String, nil]
      #   # @param maximum [Orb::Models::MaximumModel, nil]
      #   # @param maximum_amount [String, nil]
      #   # @param minimum [Orb::Models::MinimumModel, nil]
      #   # @param minimum_amount [String, nil]
      #   # @param name [String]
      #   # @param partially_invoiced_amount [String]
      #   # @param price [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice, nil]
      #   # @param quantity [Float]
      #   # @param start_date [Time]
      #   # @param sub_line_items [Array<Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem, Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem, Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem>]
      #   # @param subtotal [String]
      #   # @param tax_amounts [Array<Orb::Models::TaxAmountModel>]
      #   # @param usage_customer_ids [Array<String>, nil]
      #   #
      #   def initialize(
      #     id:,
      #     adjusted_subtotal:,
      #     adjustments:,
      #     amount:,
      #     credits_applied:,
      #     discount:,
      #     end_date:,
      #     filter:,
      #     grouping:,
      #     maximum:,
      #     maximum_amount:,
      #     minimum:,
      #     minimum_amount:,
      #     name:,
      #     partially_invoiced_amount:,
      #     price:,
      #     quantity:,
      #     start_date:,
      #     sub_line_items:,
      #     subtotal:,
      #     tax_amounts:,
      #     usage_customer_ids:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case adjustment
      # in {adjustment_type: "usage_discount", id: String, amount: String, applies_to_price_ids: ^(Orb::ArrayOf[String])}
      #   # Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment ...
      # in {adjustment_type: "amount_discount", id: String, amount: String, amount_discount: String}
      #   # Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment ...
      # in {
      #   adjustment_type: "percentage_discount",
      #   id: String,
      #   amount: String,
      #   applies_to_price_ids: ^(Orb::ArrayOf[String])
      # }
      #   # Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment ...
      # in {adjustment_type: "minimum", id: String, amount: String, applies_to_price_ids: ^(Orb::ArrayOf[String])}
      #   # Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment ...
      # in {adjustment_type: "maximum", id: String, amount: String, applies_to_price_ids: ^(Orb::ArrayOf[String])}
      #   # Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case adjustment
      # in Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment
      #   # ...
      # in Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment
      #   # ...
      # in Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment
      #   # ...
      # in Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment
      #   # ...
      # in Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment
      #   # ...
      # end
      # ```
      class Adjustment < Orb::Union
        discriminator :adjustment_type

        variant :usage_discount,
                -> { Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment }

        variant :amount_discount,
                -> { Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment }

        variant :percentage_discount,
                -> { Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment }

        variant :minimum, -> { Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment }

        variant :maximum, -> { Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment }

        class MonetaryUsageDiscountAdjustment < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute adjustment_type
          #
          #   @return [Symbol, :usage_discount]
          required :adjustment_type, const: :usage_discount

          # @!attribute amount
          #   The value applied by an adjustment.
          #
          #   @return [String]
          required :amount, String

          # @!attribute applies_to_price_ids
          #   The price IDs that this adjustment applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute is_invoice_level
          #   True for adjustments that apply to an entire invocice, false for adjustments
          #     that apply to only one price.
          #
          #   @return [Boolean]
          required :is_invoice_level, Orb::BooleanModel

          # @!attribute reason
          #   The reason for the adjustment.
          #
          #   @return [String, nil]
          required :reason, String, nil?: true

          # @!attribute usage_discount
          #   The number of usage units by which to discount the price this adjustment applies
          #     to in a given billing period.
          #
          #   @return [Float]
          required :usage_discount, Float

          # @!parse
          #   # @param id [String]
          #   # @param amount [String]
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param is_invoice_level [Boolean]
          #   # @param reason [String, nil]
          #   # @param usage_discount [Float]
          #   # @param adjustment_type [Symbol, :usage_discount]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     applies_to_price_ids:,
          #     is_invoice_level:,
          #     reason:,
          #     usage_discount:,
          #     adjustment_type: :usage_discount,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class MonetaryAmountDiscountAdjustment < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute adjustment_type
          #
          #   @return [Symbol, :amount_discount]
          required :adjustment_type, const: :amount_discount

          # @!attribute amount
          #   The value applied by an adjustment.
          #
          #   @return [String]
          required :amount, String

          # @!attribute amount_discount
          #   The amount by which to discount the prices this adjustment applies to in a given
          #     billing period.
          #
          #   @return [String]
          required :amount_discount, String

          # @!attribute applies_to_price_ids
          #   The price IDs that this adjustment applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute is_invoice_level
          #   True for adjustments that apply to an entire invocice, false for adjustments
          #     that apply to only one price.
          #
          #   @return [Boolean]
          required :is_invoice_level, Orb::BooleanModel

          # @!attribute reason
          #   The reason for the adjustment.
          #
          #   @return [String, nil]
          required :reason, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param amount [String]
          #   # @param amount_discount [String]
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param is_invoice_level [Boolean]
          #   # @param reason [String, nil]
          #   # @param adjustment_type [Symbol, :amount_discount]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     amount_discount:,
          #     applies_to_price_ids:,
          #     is_invoice_level:,
          #     reason:,
          #     adjustment_type: :amount_discount,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class MonetaryPercentageDiscountAdjustment < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute adjustment_type
          #
          #   @return [Symbol, :percentage_discount]
          required :adjustment_type, const: :percentage_discount

          # @!attribute amount
          #   The value applied by an adjustment.
          #
          #   @return [String]
          required :amount, String

          # @!attribute applies_to_price_ids
          #   The price IDs that this adjustment applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute is_invoice_level
          #   True for adjustments that apply to an entire invocice, false for adjustments
          #     that apply to only one price.
          #
          #   @return [Boolean]
          required :is_invoice_level, Orb::BooleanModel

          # @!attribute percentage_discount
          #   The percentage (as a value between 0 and 1) by which to discount the price
          #     intervals this adjustment applies to in a given billing period.
          #
          #   @return [Float]
          required :percentage_discount, Float

          # @!attribute reason
          #   The reason for the adjustment.
          #
          #   @return [String, nil]
          required :reason, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param amount [String]
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param is_invoice_level [Boolean]
          #   # @param percentage_discount [Float]
          #   # @param reason [String, nil]
          #   # @param adjustment_type [Symbol, :percentage_discount]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     applies_to_price_ids:,
          #     is_invoice_level:,
          #     percentage_discount:,
          #     reason:,
          #     adjustment_type: :percentage_discount,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class MonetaryMinimumAdjustment < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute adjustment_type
          #
          #   @return [Symbol, :minimum]
          required :adjustment_type, const: :minimum

          # @!attribute amount
          #   The value applied by an adjustment.
          #
          #   @return [String]
          required :amount, String

          # @!attribute applies_to_price_ids
          #   The price IDs that this adjustment applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute is_invoice_level
          #   True for adjustments that apply to an entire invocice, false for adjustments
          #     that apply to only one price.
          #
          #   @return [Boolean]
          required :is_invoice_level, Orb::BooleanModel

          # @!attribute item_id
          #   The item ID that revenue from this minimum will be attributed to.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute minimum_amount
          #   The minimum amount to charge in a given billing period for the prices this
          #     adjustment applies to.
          #
          #   @return [String]
          required :minimum_amount, String

          # @!attribute reason
          #   The reason for the adjustment.
          #
          #   @return [String, nil]
          required :reason, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param amount [String]
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param is_invoice_level [Boolean]
          #   # @param item_id [String]
          #   # @param minimum_amount [String]
          #   # @param reason [String, nil]
          #   # @param adjustment_type [Symbol, :minimum]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     applies_to_price_ids:,
          #     is_invoice_level:,
          #     item_id:,
          #     minimum_amount:,
          #     reason:,
          #     adjustment_type: :minimum,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class MonetaryMaximumAdjustment < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute adjustment_type
          #
          #   @return [Symbol, :maximum]
          required :adjustment_type, const: :maximum

          # @!attribute amount
          #   The value applied by an adjustment.
          #
          #   @return [String]
          required :amount, String

          # @!attribute applies_to_price_ids
          #   The price IDs that this adjustment applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute is_invoice_level
          #   True for adjustments that apply to an entire invocice, false for adjustments
          #     that apply to only one price.
          #
          #   @return [Boolean]
          required :is_invoice_level, Orb::BooleanModel

          # @!attribute maximum_amount
          #   The maximum amount to charge in a given billing period for the prices this
          #     adjustment applies to.
          #
          #   @return [String]
          required :maximum_amount, String

          # @!attribute reason
          #   The reason for the adjustment.
          #
          #   @return [String, nil]
          required :reason, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param amount [String]
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param is_invoice_level [Boolean]
          #   # @param maximum_amount [String]
          #   # @param reason [String, nil]
          #   # @param adjustment_type [Symbol, :maximum]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     applies_to_price_ids:,
          #     is_invoice_level:,
          #     maximum_amount:,
          #     reason:,
          #     adjustment_type: :maximum,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case sub_line_item
      # in {
      #   type: "matrix",
      #   amount: String,
      #   grouping: Orb::Models::SubLineItemGroupingModel,
      #   matrix_config: Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig
      # }
      #   # Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem ...
      # in {type: "tier", amount: String, grouping: Orb::Models::SubLineItemGroupingModel, name: String}
      #   # Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem ...
      # in {type: "'null'", amount: String, grouping: Orb::Models::SubLineItemGroupingModel, name: String}
      #   # Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case sub_line_item
      # in Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem
      #   # ...
      # in Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem
      #   # ...
      # in Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem
      #   # ...
      # end
      # ```
      class SubLineItem < Orb::Union
        discriminator :type

        variant :matrix, -> { Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem }

        variant :tier, -> { Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem }

        variant :"'null'", -> { Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem }

        class MatrixSubLineItem < Orb::BaseModel
          # @!attribute amount
          #   The total amount for this sub line item.
          #
          #   @return [String]
          required :amount, String

          # @!attribute grouping
          #
          #   @return [Orb::Models::SubLineItemGroupingModel, nil]
          required :grouping, -> { Orb::Models::SubLineItemGroupingModel }, nil?: true

          # @!attribute matrix_config
          #
          #   @return [Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig]
          required :matrix_config,
                   -> { Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig }

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute quantity
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute type
          #
          #   @return [Symbol, :matrix]
          required :type, const: :matrix

          # @!parse
          #   # @param amount [String]
          #   # @param grouping [Orb::Models::SubLineItemGroupingModel, nil]
          #   # @param matrix_config [Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig]
          #   # @param name [String]
          #   # @param quantity [Float]
          #   # @param type [Symbol, :matrix]
          #   #
          #   def initialize(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          class MatrixConfig < Orb::BaseModel
            # @!attribute dimension_values
            #   The ordered dimension values for this line item.
            #
            #   @return [Array<String, nil>]
            required :dimension_values, Orb::ArrayOf[String, nil?: true]

            # @!parse
            #   # @param dimension_values [Array<String, nil>]
            #   #
            #   def initialize(dimension_values:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

        class TierSubLineItem < Orb::BaseModel
          # @!attribute amount
          #   The total amount for this sub line item.
          #
          #   @return [String]
          required :amount, String

          # @!attribute grouping
          #
          #   @return [Orb::Models::SubLineItemGroupingModel, nil]
          required :grouping, -> { Orb::Models::SubLineItemGroupingModel }, nil?: true

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute quantity
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute tier_config
          #
          #   @return [Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem::TierConfig]
          required :tier_config, -> { Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem::TierConfig }

          # @!attribute type
          #
          #   @return [Symbol, :tier]
          required :type, const: :tier

          # @!parse
          #   # @param amount [String]
          #   # @param grouping [Orb::Models::SubLineItemGroupingModel, nil]
          #   # @param name [String]
          #   # @param quantity [Float]
          #   # @param tier_config [Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem::TierConfig]
          #   # @param type [Symbol, :tier]
          #   #
          #   def initialize(amount:, grouping:, name:, quantity:, tier_config:, type: :tier, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          class TierConfig < Orb::BaseModel
            # @!attribute first_unit
            #
            #   @return [Float]
            required :first_unit, Float

            # @!attribute last_unit
            #
            #   @return [Float, nil]
            required :last_unit, Float, nil?: true

            # @!attribute unit_amount
            #
            #   @return [String]
            required :unit_amount, String

            # @!parse
            #   # @param first_unit [Float]
            #   # @param last_unit [Float, nil]
            #   # @param unit_amount [String]
            #   #
            #   def initialize(first_unit:, last_unit:, unit_amount:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

        class OtherSubLineItem < Orb::BaseModel
          # @!attribute amount
          #   The total amount for this sub line item.
          #
          #   @return [String]
          required :amount, String

          # @!attribute grouping
          #
          #   @return [Orb::Models::SubLineItemGroupingModel, nil]
          required :grouping, -> { Orb::Models::SubLineItemGroupingModel }, nil?: true

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute quantity
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute type
          #
          #   @return [Symbol, :"'null'"]
          required :type, const: :"'null'"

          # @!parse
          #   # @param amount [String]
          #   # @param grouping [Orb::Models::SubLineItemGroupingModel, nil]
          #   # @param name [String]
          #   # @param quantity [Float]
          #   # @param type [Symbol, :"'null'"]
          #   #
          #   def initialize(amount:, grouping:, name:, quantity:, type: :"'null'", **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
