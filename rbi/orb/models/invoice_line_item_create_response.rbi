# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::InvoiceLineItemCreateResponse,
            Orb::Internal::AnyHash
          )
        end

      # A unique ID for this line item.
      sig { returns(String) }
      attr_accessor :id

      # The line amount after any adjustments and before overage conversion, credits and
      # partial invoicing.
      sig { returns(String) }
      attr_accessor :adjusted_subtotal

      # All adjustments applied to the line item in the order they were applied based on
      # invoice calculations (ie. usage discounts -> amount discounts -> percentage
      # discounts -> minimums -> maximums).
      sig do
        returns(
          T::Array[
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Variants
          ]
        )
      end
      attr_accessor :adjustments

      # The final amount for a line item after all adjustments and pre paid credits have
      # been applied.
      sig { returns(String) }
      attr_accessor :amount

      # The number of prepaid credits applied.
      sig { returns(String) }
      attr_accessor :credits_applied

      # This field is deprecated in favor of `adjustments`
      sig { returns(T.nilable(Orb::Discount::Variants)) }
      attr_accessor :discount

      # The end date of the range of time applied for this line item's price.
      sig { returns(Time) }
      attr_accessor :end_date

      # An additional filter that was used to calculate the usage for this line item.
      sig { returns(T.nilable(String)) }
      attr_accessor :filter

      # [DEPRECATED] For configured prices that are split by a grouping key, this will
      # be populated with the key and a value. The `amount` and `subtotal` will be the
      # values for this particular grouping.
      sig { returns(T.nilable(String)) }
      attr_accessor :grouping

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(Orb::Maximum)) }
      attr_reader :maximum

      sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
      attr_writer :maximum

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(Orb::Minimum)) }
      attr_reader :minimum

      sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
      attr_writer :minimum

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount

      # The name of the price associated with this line item.
      sig { returns(String) }
      attr_accessor :name

      # Any amount applied from a partial invoice
      sig { returns(String) }
      attr_accessor :partially_invoiced_amount

      # The Price resource represents a price that can be billed on a subscription,
      # resulting in a charge on an invoice in the form of an invoice line item. Prices
      # take a quantity and determine an amount to bill.
      #
      # Orb supports a few different pricing models out of the box. Each of these models
      # is serialized differently in a given Price object. The model_type field
      # determines the key for the configuration object that is present.
      #
      # For more on the types of prices, see
      # [the core concepts documentation](/core-concepts#plan-and-price)
      sig { returns(Orb::Price::Variants) }
      attr_accessor :price

      # Either the fixed fee quantity or the usage during the service period.
      sig { returns(Float) }
      attr_accessor :quantity

      # The start date of the range of time applied for this line item's price.
      sig { returns(Time) }
      attr_accessor :start_date

      # For complex pricing structures, the line item can be broken down further in
      # `sub_line_items`.
      sig do
        returns(
          T::Array[
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Variants
          ]
        )
      end
      attr_accessor :sub_line_items

      # The line amount before before any adjustments.
      sig { returns(String) }
      attr_accessor :subtotal

      # An array of tax rates and their incurred tax amounts. Empty if no tax
      # integration is configured.
      sig { returns(T::Array[Orb::TaxAmount]) }
      attr_accessor :tax_amounts

      # A list of customer ids that were used to calculate the usage for this line item.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :usage_customer_ids

      sig do
        params(
          id: String,
          adjusted_subtotal: String,
          adjustments:
            T::Array[
              T.any(
                Orb::MonetaryUsageDiscountAdjustment::OrHash,
                Orb::MonetaryAmountDiscountAdjustment::OrHash,
                Orb::MonetaryPercentageDiscountAdjustment::OrHash,
                Orb::MonetaryMinimumAdjustment::OrHash,
                Orb::MonetaryMaximumAdjustment::OrHash
              )
            ],
          amount: String,
          credits_applied: String,
          discount:
            T.nilable(
              T.any(
                Orb::PercentageDiscount::OrHash,
                Orb::TrialDiscount::OrHash,
                Orb::UsageDiscount::OrHash,
                Orb::AmountDiscount::OrHash
              )
            ),
          end_date: Time,
          filter: T.nilable(String),
          grouping: T.nilable(String),
          maximum: T.nilable(Orb::Maximum::OrHash),
          maximum_amount: T.nilable(String),
          minimum: T.nilable(Orb::Minimum::OrHash),
          minimum_amount: T.nilable(String),
          name: String,
          partially_invoiced_amount: String,
          price:
            T.any(
              Orb::Price::Unit::OrHash,
              Orb::Price::Package::OrHash,
              Orb::Price::Matrix::OrHash,
              Orb::Price::Tiered::OrHash,
              Orb::Price::TieredBPS::OrHash,
              Orb::Price::BPS::OrHash,
              Orb::Price::BulkBPS::OrHash,
              Orb::Price::Bulk::OrHash,
              Orb::Price::ThresholdTotalAmount::OrHash,
              Orb::Price::TieredPackage::OrHash,
              Orb::Price::GroupedTiered::OrHash,
              Orb::Price::TieredWithMinimum::OrHash,
              Orb::Price::TieredPackageWithMinimum::OrHash,
              Orb::Price::PackageWithAllocation::OrHash,
              Orb::Price::UnitWithPercent::OrHash,
              Orb::Price::MatrixWithAllocation::OrHash,
              Orb::Price::TieredWithProration::OrHash,
              Orb::Price::UnitWithProration::OrHash,
              Orb::Price::GroupedAllocation::OrHash,
              Orb::Price::GroupedWithProratedMinimum::OrHash,
              Orb::Price::GroupedWithMeteredMinimum::OrHash,
              Orb::Price::MatrixWithDisplayName::OrHash,
              Orb::Price::BulkWithProration::OrHash,
              Orb::Price::GroupedTieredPackage::OrHash,
              Orb::Price::MaxGroupTieredPackage::OrHash,
              Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
              Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
              Orb::Price::CumulativeGroupedBulk::OrHash,
              Orb::Price::GroupedWithMinMaxThresholds::OrHash
            ),
          quantity: Float,
          start_date: Time,
          sub_line_items:
            T::Array[
              T.any(
                Orb::MatrixSubLineItem::OrHash,
                Orb::TierSubLineItem::OrHash,
                Orb::OtherSubLineItem::OrHash
              )
            ],
          subtotal: String,
          tax_amounts: T::Array[Orb::TaxAmount::OrHash],
          usage_customer_ids: T.nilable(T::Array[String])
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for this line item.
        id:,
        # The line amount after any adjustments and before overage conversion, credits and
        # partial invoicing.
        adjusted_subtotal:,
        # All adjustments applied to the line item in the order they were applied based on
        # invoice calculations (ie. usage discounts -> amount discounts -> percentage
        # discounts -> minimums -> maximums).
        adjustments:,
        # The final amount for a line item after all adjustments and pre paid credits have
        # been applied.
        amount:,
        # The number of prepaid credits applied.
        credits_applied:,
        # This field is deprecated in favor of `adjustments`
        discount:,
        # The end date of the range of time applied for this line item's price.
        end_date:,
        # An additional filter that was used to calculate the usage for this line item.
        filter:,
        # [DEPRECATED] For configured prices that are split by a grouping key, this will
        # be populated with the key and a value. The `amount` and `subtotal` will be the
        # values for this particular grouping.
        grouping:,
        # This field is deprecated in favor of `adjustments`.
        maximum:,
        # This field is deprecated in favor of `adjustments`.
        maximum_amount:,
        # This field is deprecated in favor of `adjustments`.
        minimum:,
        # This field is deprecated in favor of `adjustments`.
        minimum_amount:,
        # The name of the price associated with this line item.
        name:,
        # Any amount applied from a partial invoice
        partially_invoiced_amount:,
        # The Price resource represents a price that can be billed on a subscription,
        # resulting in a charge on an invoice in the form of an invoice line item. Prices
        # take a quantity and determine an amount to bill.
        #
        # Orb supports a few different pricing models out of the box. Each of these models
        # is serialized differently in a given Price object. The model_type field
        # determines the key for the configuration object that is present.
        #
        # For more on the types of prices, see
        # [the core concepts documentation](/core-concepts#plan-and-price)
        price:,
        # Either the fixed fee quantity or the usage during the service period.
        quantity:,
        # The start date of the range of time applied for this line item's price.
        start_date:,
        # For complex pricing structures, the line item can be broken down further in
        # `sub_line_items`.
        sub_line_items:,
        # The line amount before before any adjustments.
        subtotal:,
        # An array of tax rates and their incurred tax amounts. Empty if no tax
        # integration is configured.
        tax_amounts:,
        # A list of customer ids that were used to calculate the usage for this line item.
        usage_customer_ids:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjusted_subtotal: String,
            adjustments:
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Variants
              ],
            amount: String,
            credits_applied: String,
            discount: T.nilable(Orb::Discount::Variants),
            end_date: Time,
            filter: T.nilable(String),
            grouping: T.nilable(String),
            maximum: T.nilable(Orb::Maximum),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(Orb::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            partially_invoiced_amount: String,
            price: Orb::Price::Variants,
            quantity: Float,
            start_date: Time,
            sub_line_items:
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Variants
              ],
            subtotal: String,
            tax_amounts: T::Array[Orb::TaxAmount],
            usage_customer_ids: T.nilable(T::Array[String])
          }
        )
      end
      def to_hash
      end

      module Adjustment
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::MonetaryUsageDiscountAdjustment,
              Orb::MonetaryAmountDiscountAdjustment,
              Orb::MonetaryPercentageDiscountAdjustment,
              Orb::MonetaryMinimumAdjustment,
              Orb::MonetaryMaximumAdjustment
            )
          end

        sig do
          override.returns(
            T::Array[
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Variants
            ]
          )
        end
        def self.variants
        end
      end

      module SubLineItem
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::MatrixSubLineItem,
              Orb::TierSubLineItem,
              Orb::OtherSubLineItem
            )
          end

        sig do
          override.returns(
            T::Array[
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
