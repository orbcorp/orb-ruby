# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # invoice_line_item_create_response => {
    #   id: String,
    #   adjusted_subtotal: String,
    #   adjustments: -> { Orb::ArrayOf[union: Orb::Models::InvoiceLineItemCreateResponse::Adjustment] === _1 },
    #   amount: String,
    #   credits_applied: String,
    #   **_
    # }
    # ```
    class InvoiceLineItemCreateResponse < Orb::BaseModel
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
      #   @return [Array<Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment>]
      required :adjustments, -> { Orb::ArrayOf[union: Orb::Models::InvoiceLineItemCreateResponse::Adjustment] }

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
      #   @return [Orb::Models::InvoiceLineItemCreateResponse::Maximum, nil]
      required :maximum, -> { Orb::Models::InvoiceLineItemCreateResponse::Maximum }, nil?: true

      # @!attribute maximum_amount
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [String, nil]
      required :maximum_amount, String, nil?: true

      # @!attribute minimum
      #   This field is deprecated in favor of `adjustments`.
      #
      #   @return [Orb::Models::InvoiceLineItemCreateResponse::Minimum, nil]
      required :minimum, -> { Orb::Models::InvoiceLineItemCreateResponse::Minimum }, nil?: true

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
      #   @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice, nil]
      required :price, union: -> { Orb::Models::Price }, nil?: true

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
      #   @return [Array<Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem>]
      required :sub_line_items,
               -> { Orb::ArrayOf[union: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem] }

      # @!attribute subtotal
      #   The line amount before before any adjustments.
      #
      #   @return [String]
      required :subtotal, String

      # @!attribute tax_amounts
      #   An array of tax rates and their incurred tax amounts. Empty if no tax
      #     integration is configured.
      #
      #   @return [Array<Orb::Models::InvoiceLineItemCreateResponse::TaxAmount>]
      required :tax_amounts, -> { Orb::ArrayOf[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount] }

      # @!parse
      #   # @param id [String]
      #   # @param adjusted_subtotal [String]
      #   # @param adjustments [Array<Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment>]
      #   # @param amount [String]
      #   # @param credits_applied [String]
      #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
      #   # @param end_date [Time]
      #   # @param grouping [String, nil]
      #   # @param maximum [Orb::Models::InvoiceLineItemCreateResponse::Maximum, nil]
      #   # @param maximum_amount [String, nil]
      #   # @param minimum [Orb::Models::InvoiceLineItemCreateResponse::Minimum, nil]
      #   # @param minimum_amount [String, nil]
      #   # @param name [String]
      #   # @param partially_invoiced_amount [String]
      #   # @param price [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice, nil]
      #   # @param quantity [Float]
      #   # @param start_date [Time]
      #   # @param sub_line_items [Array<Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem>]
      #   # @param subtotal [String]
      #   # @param tax_amounts [Array<Orb::Models::InvoiceLineItemCreateResponse::TaxAmount>]
      #   #
      #   def initialize(
      #     id:,
      #     adjusted_subtotal:,
      #     adjustments:,
      #     amount:,
      #     credits_applied:,
      #     discount:,
      #     end_date:,
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
      # in {
      #   adjustment_type: "usage_discount",
      #   id: String,
      #   amount: String,
      #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }
      # }
      #   # Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment ...
      # in {adjustment_type: "amount_discount", id: String, amount: String, amount_discount: String}
      #   # Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment ...
      # in {
      #   adjustment_type: "percentage_discount",
      #   id: String,
      #   amount: String,
      #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }
      # }
      #   # Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment ...
      # in {adjustment_type: "minimum", id: String, amount: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }}
      #   # Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment ...
      # in {adjustment_type: "maximum", id: String, amount: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }}
      #   # Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case adjustment
      # in Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment
      #   # ...
      # in Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment
      #   # ...
      # in Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment
      #   # ...
      # in Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment
      #   # ...
      # in Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment
      #   # ...
      # end
      # ```
      class Adjustment < Orb::Union
        discriminator :adjustment_type

        variant :usage_discount,
                -> { Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment }

        variant :amount_discount,
                -> { Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment }

        variant :percentage_discount,
                -> { Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment }

        variant :minimum, -> { Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment }

        variant :maximum, -> { Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment }

        # @example
        # ```ruby
        # monetary_usage_discount_adjustment => {
        #   id: String,
        #   adjustment_type: :usage_discount,
        #   amount: String,
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   is_invoice_level: Orb::BooleanModel,
        #   **_
        # }
        # ```
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

        # @example
        # ```ruby
        # monetary_amount_discount_adjustment => {
        #   id: String,
        #   adjustment_type: :amount_discount,
        #   amount: String,
        #   amount_discount: String,
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   **_
        # }
        # ```
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

        # @example
        # ```ruby
        # monetary_percentage_discount_adjustment => {
        #   id: String,
        #   adjustment_type: :percentage_discount,
        #   amount: String,
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   is_invoice_level: Orb::BooleanModel,
        #   **_
        # }
        # ```
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

        # @example
        # ```ruby
        # monetary_minimum_adjustment => {
        #   id: String,
        #   adjustment_type: :minimum,
        #   amount: String,
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   is_invoice_level: Orb::BooleanModel,
        #   **_
        # }
        # ```
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

        # @example
        # ```ruby
        # monetary_maximum_adjustment => {
        #   id: String,
        #   adjustment_type: :maximum,
        #   amount: String,
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   is_invoice_level: Orb::BooleanModel,
        #   **_
        # }
        # ```
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

      # @example
      # ```ruby
      # maximum => {
      #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
      #   maximum_amount: String
      # }
      # ```
      class Maximum < Orb::BaseModel
        # @!attribute applies_to_price_ids
        #   List of price_ids that this maximum amount applies to. For plan/plan phase
        #     maximums, this can be a subset of prices.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute maximum_amount
        #   Maximum amount applied
        #
        #   @return [String]
        required :maximum_amount, String

        # @!parse
        #   # This field is deprecated in favor of `adjustments`.
        #   #
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param maximum_amount [String]
        #   #
        #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @example
      # ```ruby
      # minimum => {
      #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
      #   minimum_amount: String
      # }
      # ```
      class Minimum < Orb::BaseModel
        # @!attribute applies_to_price_ids
        #   List of price_ids that this minimum amount applies to. For plan/plan phase
        #     minimums, this can be a subset of prices.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute minimum_amount
        #   Minimum amount applied
        #
        #   @return [String]
        required :minimum_amount, String

        # @!parse
        #   # This field is deprecated in favor of `adjustments`.
        #   #
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param minimum_amount [String]
        #   #
        #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case sub_line_item
      # in {
      #   type: "matrix",
      #   amount: String,
      #   grouping: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping,
      #   matrix_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig
      # }
      #   # Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem ...
      # in {
      #   type: "tier",
      #   amount: String,
      #   grouping: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping,
      #   name: String
      # }
      #   # Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem ...
      # in {
      #   type: "'null'",
      #   amount: String,
      #   grouping: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping,
      #   name: String
      # }
      #   # Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case sub_line_item
      # in Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem
      #   # ...
      # in Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem
      #   # ...
      # in Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
      #   # ...
      # end
      # ```
      class SubLineItem < Orb::Union
        discriminator :type

        variant :matrix, -> { Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem }

        variant :tier, -> { Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem }

        variant :"'null'", -> { Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem }

        # @example
        # ```ruby
        # matrix_sub_line_item => {
        #   amount: String,
        #   grouping: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping,
        #   matrix_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig,
        #   name: String,
        #   quantity: Float
        # }
        # ```
        class MatrixSubLineItem < Orb::BaseModel
          # @!attribute amount
          #   The total amount for this sub line item.
          #
          #   @return [String]
          required :amount, String

          # @!attribute grouping
          #
          #   @return [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping, nil]
          required :grouping,
                   -> { Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping },
                   nil?: true

          # @!attribute matrix_config
          #
          #   @return [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig]
          required :matrix_config,
                   -> { Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig }

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
          #   # @param grouping [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping, nil]
          #   # @param matrix_config [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig]
          #   # @param name [String]
          #   # @param quantity [Float]
          #   # @param type [Symbol, :matrix]
          #   #
          #   def initialize(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # grouping => {
          #   key: String,
          #   value: String
          # }
          # ```
          class Grouping < Orb::BaseModel
            # @!attribute key
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #   No value indicates the default group
            #
            #   @return [String, nil]
            required :value, String, nil?: true

            # @!parse
            #   # @param key [String]
            #   # @param value [String, nil]
            #   #
            #   def initialize(key:, value:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @example
          # ```ruby
          # matrix_config => {
          #   dimension_values: -> { Orb::ArrayOf[String, nil?: true] === _1 }
          # }
          # ```
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

        # @example
        # ```ruby
        # tier_sub_line_item => {
        #   amount: String,
        #   grouping: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping,
        #   name: String,
        #   quantity: Float,
        #   tier_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig
        # }
        # ```
        class TierSubLineItem < Orb::BaseModel
          # @!attribute amount
          #   The total amount for this sub line item.
          #
          #   @return [String]
          required :amount, String

          # @!attribute grouping
          #
          #   @return [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping, nil]
          required :grouping,
                   -> { Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping },
                   nil?: true

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
          #   @return [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig]
          required :tier_config,
                   -> { Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig }

          # @!attribute type
          #
          #   @return [Symbol, :tier]
          required :type, const: :tier

          # @!parse
          #   # @param amount [String]
          #   # @param grouping [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping, nil]
          #   # @param name [String]
          #   # @param quantity [Float]
          #   # @param tier_config [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig]
          #   # @param type [Symbol, :tier]
          #   #
          #   def initialize(amount:, grouping:, name:, quantity:, tier_config:, type: :tier, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # grouping => {
          #   key: String,
          #   value: String
          # }
          # ```
          class Grouping < Orb::BaseModel
            # @!attribute key
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #   No value indicates the default group
            #
            #   @return [String, nil]
            required :value, String, nil?: true

            # @!parse
            #   # @param key [String]
            #   # @param value [String, nil]
            #   #
            #   def initialize(key:, value:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @example
          # ```ruby
          # tier_config => {
          #   first_unit: Float,
          #   last_unit: Float,
          #   unit_amount: String
          # }
          # ```
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

        # @example
        # ```ruby
        # other_sub_line_item => {
        #   amount: String,
        #   grouping: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping,
        #   name: String,
        #   quantity: Float,
        #   type: :"'null'"
        # }
        # ```
        class OtherSubLineItem < Orb::BaseModel
          # @!attribute amount
          #   The total amount for this sub line item.
          #
          #   @return [String]
          required :amount, String

          # @!attribute grouping
          #
          #   @return [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping, nil]
          required :grouping,
                   -> { Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping },
                   nil?: true

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
          #   # @param grouping [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping, nil]
          #   # @param name [String]
          #   # @param quantity [Float]
          #   # @param type [Symbol, :"'null'"]
          #   #
          #   def initialize(amount:, grouping:, name:, quantity:, type: :"'null'", **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # grouping => {
          #   key: String,
          #   value: String
          # }
          # ```
          class Grouping < Orb::BaseModel
            # @!attribute key
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #   No value indicates the default group
            #
            #   @return [String, nil]
            required :value, String, nil?: true

            # @!parse
            #   # @param key [String]
            #   # @param value [String, nil]
            #   #
            #   def initialize(key:, value:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end
      end

      # @example
      # ```ruby
      # tax_amount => {
      #   amount: String,
      #   tax_rate_description: String,
      #   tax_rate_percentage: String
      # }
      # ```
      class TaxAmount < Orb::BaseModel
        # @!attribute amount
        #   The amount of additional tax incurred by this tax rate.
        #
        #   @return [String]
        required :amount, String

        # @!attribute tax_rate_description
        #   The human-readable description of the applied tax rate.
        #
        #   @return [String]
        required :tax_rate_description, String

        # @!attribute tax_rate_percentage
        #   The tax rate percentage, out of 100.
        #
        #   @return [String, nil]
        required :tax_rate_percentage, String, nil?: true

        # @!parse
        #   # @param amount [String]
        #   # @param tax_rate_description [String]
        #   # @param tax_rate_percentage [String, nil]
        #   #
        #   def initialize(amount:, tax_rate_description:, tax_rate_percentage:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
