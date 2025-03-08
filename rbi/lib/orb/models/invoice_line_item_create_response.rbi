# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateResponse < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def adjusted_subtotal
      end

      sig { params(_: String).returns(String) }
      def adjusted_subtotal=(_)
      end

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

      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

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

      sig { returns(Time) }
      def end_date
      end

      sig { params(_: Time).returns(Time) }
      def end_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def filter
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def filter=(_)
      end

      sig { returns(T.nilable(String)) }
      def grouping
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def grouping=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum)) }
      def maximum
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum))
          .returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum))
      end
      def maximum=(_)
      end

      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum)) }
      def minimum
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum))
          .returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum))
      end
      def minimum=(_)
      end

      sig { returns(T.nilable(String)) }
      def minimum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def minimum_amount=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def partially_invoiced_amount
      end

      sig { params(_: String).returns(String) }
      def partially_invoiced_amount=(_)
      end

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

      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

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

      sig { returns(String) }
      def subtotal
      end

      sig { params(_: String).returns(String) }
      def subtotal=(_)
      end

      sig { returns(T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount]) }
      def tax_amounts
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount])
          .returns(T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount])
      end
      def tax_amounts=(_)
      end

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

          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

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

          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(String) }
          def amount_discount
          end

          sig { params(_: String).returns(String) }
          def amount_discount=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

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

          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig { returns(Float) }
          def percentage_discount
          end

          sig { params(_: Float).returns(Float) }
          def percentage_discount=(_)
          end

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

          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

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

          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

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

        class << self
          sig do
            override
              .returns(
                [[Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryUsageDiscountAdjustment], [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryAmountDiscountAdjustment], [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryPercentageDiscountAdjustment], [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMinimumAdjustment], [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MonetaryMaximumAdjustment]]
              )
          end
          private def variants
          end
        end
      end

      class Maximum < Orb::BaseModel
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(String) }
        def maximum_amount
        end

        sig { params(_: String).returns(String) }
        def maximum_amount=(_)
        end

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
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

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

        class MatrixSubLineItem < Orb::BaseModel
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

        class << self
          sig do
            override
              .returns(
                [[Symbol, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem], [Symbol, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem], [Symbol, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem]]
              )
          end
          private def variants
          end
        end
      end

      class TaxAmount < Orb::BaseModel
        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        sig { returns(String) }
        def tax_rate_description
        end

        sig { params(_: String).returns(String) }
        def tax_rate_description=(_)
        end

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
