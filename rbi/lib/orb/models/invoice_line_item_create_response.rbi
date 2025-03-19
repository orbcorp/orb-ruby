# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateResponse < Orb::BaseModel
      # A unique ID for this line item.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The line amount after any adjustments and before overage conversion, credits and
      #   partial invoicing.
      sig { returns(String) }
      def adjusted_subtotal
      end

      sig { params(_: String).returns(String) }
      def adjusted_subtotal=(_)
      end

      # All adjustments applied to the line item in the order they were applied based on
      #   invoice calculations (ie. usage discounts -> amount discounts -> percentage
      #   discounts -> minimums -> maximums).
      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment
          )
          ]
        )
      end
      def adjustments
      end

      sig do
        params(
          _: T::Array[
          T.any(
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment
            )
            ]
          )
      end
      def adjustments=(_)
      end

      # The final amount for a line item after all adjustments and pre paid credits have
      #   been applied.
      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      # The number of prepaid credits applied.
      sig { returns(String) }
      def credits_applied
      end

      sig { params(_: String).returns(String) }
      def credits_applied=(_)
      end

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
      end
      def discount
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
      end
      def discount=(_)
      end

      # The end date of the range of time applied for this line item's price.
      sig { returns(Time) }
      def end_date
      end

      sig { params(_: Time).returns(Time) }
      def end_date=(_)
      end

      # An additional filter that was used to calculate the usage for this line item.
      sig { returns(T.nilable(String)) }
      def filter
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def filter=(_)
      end

      # [DEPRECATED] For configured prices that are split by a grouping key, this will
      #   be populated with the key and a value. The `amount` and `subtotal` will be the
      #   values for this particular grouping.
      sig { returns(T.nilable(String)) }
      def grouping
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def grouping=(_)
      end

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum)) }
      def maximum
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum))
          .returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum))
      end
      def maximum=(_)
      end

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum)) }
      def minimum
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum))
          .returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum))
      end
      def minimum=(_)
      end

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(String)) }
      def minimum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def minimum_amount=(_)
      end

      # The name of the price associated with this line item.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # Any amount applied from a partial invoice
      sig { returns(String) }
      def partially_invoiced_amount
      end

      sig { params(_: String).returns(String) }
      def partially_invoiced_amount=(_)
      end

      # The Price resource represents a price that can be billed on a subscription,
      #   resulting in a charge on an invoice in the form of an invoice line item. Prices
      #   take a quantity and determine an amount to bill.
      #
      #   Orb supports a few different pricing models out of the box. Each of these models
      #   is serialized differently in a given Price object. The model_type field
      #   determines the key for the configuration object that is present.
      #
      #   For more on the types of prices, see
      #   [the core concepts documentation](/core-concepts#plan-and-price)
      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::Price::UnitPrice,
              Orb::Models::Price::PackagePrice,
              Orb::Models::Price::MatrixPrice,
              Orb::Models::Price::TieredPrice,
              Orb::Models::Price::TieredBpsPrice,
              Orb::Models::Price::BpsPrice,
              Orb::Models::Price::BulkBpsPrice,
              Orb::Models::Price::BulkPrice,
              Orb::Models::Price::ThresholdTotalAmountPrice,
              Orb::Models::Price::TieredPackagePrice,
              Orb::Models::Price::GroupedTieredPrice,
              Orb::Models::Price::TieredWithMinimumPrice,
              Orb::Models::Price::TieredPackageWithMinimumPrice,
              Orb::Models::Price::PackageWithAllocationPrice,
              Orb::Models::Price::UnitWithPercentPrice,
              Orb::Models::Price::MatrixWithAllocationPrice,
              Orb::Models::Price::TieredWithProrationPrice,
              Orb::Models::Price::UnitWithProrationPrice,
              Orb::Models::Price::GroupedAllocationPrice,
              Orb::Models::Price::GroupedWithProratedMinimumPrice,
              Orb::Models::Price::GroupedWithMeteredMinimumPrice,
              Orb::Models::Price::MatrixWithDisplayNamePrice,
              Orb::Models::Price::BulkWithProrationPrice,
              Orb::Models::Price::GroupedTieredPackagePrice,
              Orb::Models::Price::MaxGroupTieredPackagePrice,
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::Price::CumulativeGroupedBulkPrice
            )
          )
        )
      end
      def price
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              Orb::Models::Price::UnitPrice,
              Orb::Models::Price::PackagePrice,
              Orb::Models::Price::MatrixPrice,
              Orb::Models::Price::TieredPrice,
              Orb::Models::Price::TieredBpsPrice,
              Orb::Models::Price::BpsPrice,
              Orb::Models::Price::BulkBpsPrice,
              Orb::Models::Price::BulkPrice,
              Orb::Models::Price::ThresholdTotalAmountPrice,
              Orb::Models::Price::TieredPackagePrice,
              Orb::Models::Price::GroupedTieredPrice,
              Orb::Models::Price::TieredWithMinimumPrice,
              Orb::Models::Price::TieredPackageWithMinimumPrice,
              Orb::Models::Price::PackageWithAllocationPrice,
              Orb::Models::Price::UnitWithPercentPrice,
              Orb::Models::Price::MatrixWithAllocationPrice,
              Orb::Models::Price::TieredWithProrationPrice,
              Orb::Models::Price::UnitWithProrationPrice,
              Orb::Models::Price::GroupedAllocationPrice,
              Orb::Models::Price::GroupedWithProratedMinimumPrice,
              Orb::Models::Price::GroupedWithMeteredMinimumPrice,
              Orb::Models::Price::MatrixWithDisplayNamePrice,
              Orb::Models::Price::BulkWithProrationPrice,
              Orb::Models::Price::GroupedTieredPackagePrice,
              Orb::Models::Price::MaxGroupTieredPackagePrice,
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::Price::CumulativeGroupedBulkPrice
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::Price::UnitPrice,
                Orb::Models::Price::PackagePrice,
                Orb::Models::Price::MatrixPrice,
                Orb::Models::Price::TieredPrice,
                Orb::Models::Price::TieredBpsPrice,
                Orb::Models::Price::BpsPrice,
                Orb::Models::Price::BulkBpsPrice,
                Orb::Models::Price::BulkPrice,
                Orb::Models::Price::ThresholdTotalAmountPrice,
                Orb::Models::Price::TieredPackagePrice,
                Orb::Models::Price::GroupedTieredPrice,
                Orb::Models::Price::TieredWithMinimumPrice,
                Orb::Models::Price::TieredPackageWithMinimumPrice,
                Orb::Models::Price::PackageWithAllocationPrice,
                Orb::Models::Price::UnitWithPercentPrice,
                Orb::Models::Price::MatrixWithAllocationPrice,
                Orb::Models::Price::TieredWithProrationPrice,
                Orb::Models::Price::UnitWithProrationPrice,
                Orb::Models::Price::GroupedAllocationPrice,
                Orb::Models::Price::GroupedWithProratedMinimumPrice,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                Orb::Models::Price::MatrixWithDisplayNamePrice,
                Orb::Models::Price::BulkWithProrationPrice,
                Orb::Models::Price::GroupedTieredPackagePrice,
                Orb::Models::Price::MaxGroupTieredPackagePrice,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
              )
            )
          )
      end
      def price=(_)
      end

      # Either the fixed fee quantity or the usage during the service period.
      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      # The start date of the range of time applied for this line item's price.
      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

      # For complex pricing structures, the line item can be broken down further in
      #   `sub_line_items`.
      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem,
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem,
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
          )
          ]
        )
      end
      def sub_line_items
      end

      sig do
        params(
          _: T::Array[
          T.any(
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem,
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem,
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
            )
            ]
          )
      end
      def sub_line_items=(_)
      end

      # The line amount before before any adjustments.
      sig { returns(String) }
      def subtotal
      end

      sig { params(_: String).returns(String) }
      def subtotal=(_)
      end

      # An array of tax rates and their incurred tax amounts. Empty if no tax
      #   integration is configured.
      sig { returns(T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount]) }
      def tax_amounts
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount])
          .returns(T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount])
      end
      def tax_amounts=(_)
      end

      # A list of customer ids that were used to calculate the usage for this line item.
      sig { returns(T.nilable(T::Array[String])) }
      def usage_customer_ids
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def usage_customer_ids=(_)
      end

      sig do
        params(
          id: String,
          adjusted_subtotal: String,
          adjustments: T::Array[
          T.any(
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment
          )
          ],
          amount: String,
          credits_applied: String,
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          end_date: Time,
          filter: T.nilable(String),
          grouping: T.nilable(String),
          maximum: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum),
          maximum_amount: T.nilable(String),
          minimum: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum),
          minimum_amount: T.nilable(String),
          name: String,
          partially_invoiced_amount: String,
          price: T.nilable(
            T.any(
              Orb::Models::Price::UnitPrice,
              Orb::Models::Price::PackagePrice,
              Orb::Models::Price::MatrixPrice,
              Orb::Models::Price::TieredPrice,
              Orb::Models::Price::TieredBpsPrice,
              Orb::Models::Price::BpsPrice,
              Orb::Models::Price::BulkBpsPrice,
              Orb::Models::Price::BulkPrice,
              Orb::Models::Price::ThresholdTotalAmountPrice,
              Orb::Models::Price::TieredPackagePrice,
              Orb::Models::Price::GroupedTieredPrice,
              Orb::Models::Price::TieredWithMinimumPrice,
              Orb::Models::Price::TieredPackageWithMinimumPrice,
              Orb::Models::Price::PackageWithAllocationPrice,
              Orb::Models::Price::UnitWithPercentPrice,
              Orb::Models::Price::MatrixWithAllocationPrice,
              Orb::Models::Price::TieredWithProrationPrice,
              Orb::Models::Price::UnitWithProrationPrice,
              Orb::Models::Price::GroupedAllocationPrice,
              Orb::Models::Price::GroupedWithProratedMinimumPrice,
              Orb::Models::Price::GroupedWithMeteredMinimumPrice,
              Orb::Models::Price::MatrixWithDisplayNamePrice,
              Orb::Models::Price::BulkWithProrationPrice,
              Orb::Models::Price::GroupedTieredPackagePrice,
              Orb::Models::Price::MaxGroupTieredPackagePrice,
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::Price::CumulativeGroupedBulkPrice
            )
          ),
          quantity: Float,
          start_date: Time,
          sub_line_items: T::Array[
          T.any(
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem,
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem,
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
          )
          ],
          subtotal: String,
          tax_amounts: T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount],
          usage_customer_ids: T.nilable(T::Array[String])
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        adjusted_subtotal:,
        adjustments:,
        amount:,
        credits_applied:,
        discount:,
        end_date:,
        filter:,
        grouping:,
        maximum:,
        maximum_amount:,
        minimum:,
        minimum_amount:,
        name:,
        partially_invoiced_amount:,
        price:,
        quantity:,
        start_date:,
        sub_line_items:,
        subtotal:,
        tax_amounts:,
        usage_customer_ids:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              adjusted_subtotal: String,
              adjustments: T::Array[
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment
              )
              ],
              amount: String,
              credits_applied: String,
              discount: T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              ),
              end_date: Time,
              filter: T.nilable(String),
              grouping: T.nilable(String),
              maximum: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum),
              maximum_amount: T.nilable(String),
              minimum: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum),
              minimum_amount: T.nilable(String),
              name: String,
              partially_invoiced_amount: String,
              price: T.nilable(
                T.any(
                  Orb::Models::Price::UnitPrice,
                  Orb::Models::Price::PackagePrice,
                  Orb::Models::Price::MatrixPrice,
                  Orb::Models::Price::TieredPrice,
                  Orb::Models::Price::TieredBpsPrice,
                  Orb::Models::Price::BpsPrice,
                  Orb::Models::Price::BulkBpsPrice,
                  Orb::Models::Price::BulkPrice,
                  Orb::Models::Price::ThresholdTotalAmountPrice,
                  Orb::Models::Price::TieredPackagePrice,
                  Orb::Models::Price::GroupedTieredPrice,
                  Orb::Models::Price::TieredWithMinimumPrice,
                  Orb::Models::Price::TieredPackageWithMinimumPrice,
                  Orb::Models::Price::PackageWithAllocationPrice,
                  Orb::Models::Price::UnitWithPercentPrice,
                  Orb::Models::Price::MatrixWithAllocationPrice,
                  Orb::Models::Price::TieredWithProrationPrice,
                  Orb::Models::Price::UnitWithProrationPrice,
                  Orb::Models::Price::GroupedAllocationPrice,
                  Orb::Models::Price::GroupedWithProratedMinimumPrice,
                  Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                  Orb::Models::Price::MatrixWithDisplayNamePrice,
                  Orb::Models::Price::BulkWithProrationPrice,
                  Orb::Models::Price::GroupedTieredPackagePrice,
                  Orb::Models::Price::MaxGroupTieredPackagePrice,
                  Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                  Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                  Orb::Models::Price::CumulativeGroupedBulkPrice
                )
              ),
              quantity: Float,
              start_date: Time,
              sub_line_items: T::Array[
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem,
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem,
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
              )
              ],
              subtotal: String,
              tax_amounts: T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount],
              usage_customer_ids: T.nilable(T::Array[String])
            }
          )
      end
      def to_hash
      end

      class Adjustment < Orb::Union
        abstract!

        Variants =
          type_template(:out) do
            {
              fixed: T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment
              )
            }
          end

        class MonetaryUsageDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The value applied by an adjustment.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          # The number of usage units by which to discount the price this adjustment applies
          #   to in a given billing period.
          sig { returns(Float) }
          def usage_discount
          end

          sig { params(_: Float).returns(Float) }
          def usage_discount=(_)
          end

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              reason: T.nilable(String),
              usage_discount: Float,
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            applies_to_price_ids:,
            is_invoice_level:,
            reason:,
            usage_discount:,
            adjustment_type: :usage_discount
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  amount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  reason: T.nilable(String),
                  usage_discount: Float
                }
              )
          end
          def to_hash
          end
        end

        class MonetaryAmountDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The value applied by an adjustment.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # The amount by which to discount the prices this adjustment applies to in a given
          #   billing period.
          sig { returns(String) }
          def amount_discount
          end

          sig { params(_: String).returns(String) }
          def amount_discount=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          sig do
            params(
              id: String,
              amount: String,
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              reason: T.nilable(String),
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            amount_discount:,
            applies_to_price_ids:,
            is_invoice_level:,
            reason:,
            adjustment_type: :amount_discount
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  amount: String,
                  amount_discount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class MonetaryPercentageDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The value applied by an adjustment.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The percentage (as a value between 0 and 1) by which to discount the price
          #   intervals this adjustment applies to in a given billing period.
          sig { returns(Float) }
          def percentage_discount
          end

          sig { params(_: Float).returns(Float) }
          def percentage_discount=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              percentage_discount: Float,
              reason: T.nilable(String),
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            applies_to_price_ids:,
            is_invoice_level:,
            percentage_discount:,
            reason:,
            adjustment_type: :percentage_discount
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  amount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  percentage_discount: Float,
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class MonetaryMinimumAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The value applied by an adjustment.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The item ID that revenue from this minimum will be attributed to.
          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          # The minimum amount to charge in a given billing period for the prices this
          #   adjustment applies to.
          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              item_id: String,
              minimum_amount: String,
              reason: T.nilable(String),
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            applies_to_price_ids:,
            is_invoice_level:,
            item_id:,
            minimum_amount:,
            reason:,
            adjustment_type: :minimum
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  amount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  item_id: String,
                  minimum_amount: String,
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class MonetaryMaximumAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The value applied by an adjustment.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The maximum amount to charge in a given billing period for the prices this
          #   adjustment applies to.
          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              maximum_amount: String,
              reason: T.nilable(String),
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            applies_to_price_ids:,
            is_invoice_level:,
            maximum_amount:,
            reason:,
            adjustment_type: :maximum
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  amount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  maximum_amount: String,
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end
      end

      class Maximum < Orb::BaseModel
        # List of price_ids that this maximum amount applies to. For plan/plan phase
        #   maximums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        # Maximum amount applied
        sig { returns(String) }
        def maximum_amount
        end

        sig { params(_: String).returns(String) }
        def maximum_amount=(_)
        end

        # This field is deprecated in favor of `adjustments`.
        sig do
          params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, maximum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash
        end
      end

      class Minimum < Orb::BaseModel
        # List of price_ids that this minimum amount applies to. For plan/plan phase
        #   minimums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        # Minimum amount applied
        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

        # This field is deprecated in favor of `adjustments`.
        sig do
          params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, minimum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash
        end
      end

      class SubLineItem < Orb::Union
        abstract!

        Variants =
          type_template(:out) do
            {
              fixed: T.any(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem,
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem,
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
              )
            }
          end

        class MatrixSubLineItem < Orb::BaseModel
          # The total amount for this sub line item.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping)) }
          def grouping
          end

          sig do
            params(_: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping))
              .returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping))
          end
          def grouping=(_)
          end

          sig { returns(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig) }
          def matrix_config
          end

          sig do
            params(_: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig)
              .returns(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig)
          end
          def matrix_config=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Float) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              amount: String,
              grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping),
              matrix_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig,
              name: String,
              quantity: Float,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix)
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping),
                  matrix_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig,
                  name: String,
                  quantity: Float,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class Grouping < Orb::BaseModel
            sig { returns(String) }
            def key
            end

            sig { params(_: String).returns(String) }
            def key=(_)
            end

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            def value
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def value=(_)
            end

            sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
            def self.new(key:, value:)
            end

            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash
            end
          end

          class MatrixConfig < Orb::BaseModel
            # The ordered dimension values for this line item.
            sig { returns(T::Array[T.nilable(String)]) }
            def dimension_values
            end

            sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
            def dimension_values=(_)
            end

            sig { params(dimension_values: T::Array[T.nilable(String)]).returns(T.attached_class) }
            def self.new(dimension_values:)
            end

            sig { override.returns({dimension_values: T::Array[T.nilable(String)]}) }
            def to_hash
            end
          end
        end

        class TierSubLineItem < Orb::BaseModel
          # The total amount for this sub line item.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping)) }
          def grouping
          end

          sig do
            params(_: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping))
              .returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping))
          end
          def grouping=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Float) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig) }
          def tier_config
          end

          sig do
            params(_: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig)
              .returns(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig)
          end
          def tier_config=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              amount: String,
              grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping),
              name: String,
              quantity: Float,
              tier_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, grouping:, name:, quantity:, tier_config:, type: :tier)
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping),
                  name: String,
                  quantity: Float,
                  tier_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class Grouping < Orb::BaseModel
            sig { returns(String) }
            def key
            end

            sig { params(_: String).returns(String) }
            def key=(_)
            end

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            def value
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def value=(_)
            end

            sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
            def self.new(key:, value:)
            end

            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash
            end
          end

          class TierConfig < Orb::BaseModel
            sig { returns(Float) }
            def first_unit
            end

            sig { params(_: Float).returns(Float) }
            def first_unit=(_)
            end

            sig { returns(T.nilable(Float)) }
            def last_unit
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def last_unit=(_)
            end

            sig { returns(String) }
            def unit_amount
            end

            sig { params(_: String).returns(String) }
            def unit_amount=(_)
            end

            sig do
              params(
                first_unit: Float,
                last_unit: T.nilable(Float),
                unit_amount: String
              ).returns(T.attached_class)
            end
            def self.new(first_unit:, last_unit:, unit_amount:)
            end

            sig { override.returns({first_unit: Float, last_unit: T.nilable(Float), unit_amount: String}) }
            def to_hash
            end
          end
        end

        class OtherSubLineItem < Orb::BaseModel
          # The total amount for this sub line item.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping)) }
          def grouping
          end

          sig do
            params(_: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping))
              .returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping))
          end
          def grouping=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Float) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              amount: String,
              grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping),
              name: String,
              quantity: Float,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, grouping:, name:, quantity:, type: :"'null'")
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping),
                  name: String,
                  quantity: Float,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class Grouping < Orb::BaseModel
            sig { returns(String) }
            def key
            end

            sig { params(_: String).returns(String) }
            def key=(_)
            end

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            def value
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def value=(_)
            end

            sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
            def self.new(key:, value:)
            end

            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash
            end
          end
        end
      end

      class TaxAmount < Orb::BaseModel
        # The amount of additional tax incurred by this tax rate.
        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        # The human-readable description of the applied tax rate.
        sig { returns(String) }
        def tax_rate_description
        end

        sig { params(_: String).returns(String) }
        def tax_rate_description=(_)
        end

        # The tax rate percentage, out of 100.
        sig { returns(T.nilable(String)) }
        def tax_rate_percentage
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tax_rate_percentage=(_)
        end

        sig do
          params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(amount:, tax_rate_description:, tax_rate_percentage:)
        end

        sig do
          override.returns(
            {
              amount: String,
              tax_rate_description: String,
              tax_rate_percentage: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
