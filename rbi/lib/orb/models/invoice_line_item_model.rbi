# typed: strong

module Orb
  module Models
    class InvoiceLineItemModel < Orb::BaseModel
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
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment
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
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment,
              Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment,
              Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment,
              Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment,
              Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment
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
              Orb::Models::Discount::UsageDiscount,
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
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
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

      sig { returns(T.nilable(Orb::Models::MaximumModel)) }
      def maximum
      end

      sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
      def maximum=(_)
      end

      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      sig { returns(T.nilable(Orb::Models::MinimumModel)) }
      def minimum
      end

      sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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
              Orb::Models::PriceModel::UnitPrice,
              Orb::Models::PriceModel::PackagePrice,
              Orb::Models::PriceModel::MatrixPrice,
              Orb::Models::PriceModel::TieredPrice,
              Orb::Models::PriceModel::TieredBpsPrice,
              Orb::Models::PriceModel::BpsPrice,
              Orb::Models::PriceModel::BulkBpsPrice,
              Orb::Models::PriceModel::BulkPrice,
              Orb::Models::PriceModel::ThresholdTotalAmountPrice,
              Orb::Models::PriceModel::TieredPackagePrice,
              Orb::Models::PriceModel::GroupedTieredPrice,
              Orb::Models::PriceModel::TieredWithMinimumPrice,
              Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
              Orb::Models::PriceModel::PackageWithAllocationPrice,
              Orb::Models::PriceModel::UnitWithPercentPrice,
              Orb::Models::PriceModel::MatrixWithAllocationPrice,
              Orb::Models::PriceModel::TieredWithProrationPrice,
              Orb::Models::PriceModel::UnitWithProrationPrice,
              Orb::Models::PriceModel::GroupedAllocationPrice,
              Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
              Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
              Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
              Orb::Models::PriceModel::BulkWithProrationPrice,
              Orb::Models::PriceModel::GroupedTieredPackagePrice,
              Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
              Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::PriceModel::CumulativeGroupedBulkPrice
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
              Orb::Models::PriceModel::UnitPrice,
              Orb::Models::PriceModel::PackagePrice,
              Orb::Models::PriceModel::MatrixPrice,
              Orb::Models::PriceModel::TieredPrice,
              Orb::Models::PriceModel::TieredBpsPrice,
              Orb::Models::PriceModel::BpsPrice,
              Orb::Models::PriceModel::BulkBpsPrice,
              Orb::Models::PriceModel::BulkPrice,
              Orb::Models::PriceModel::ThresholdTotalAmountPrice,
              Orb::Models::PriceModel::TieredPackagePrice,
              Orb::Models::PriceModel::GroupedTieredPrice,
              Orb::Models::PriceModel::TieredWithMinimumPrice,
              Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
              Orb::Models::PriceModel::PackageWithAllocationPrice,
              Orb::Models::PriceModel::UnitWithPercentPrice,
              Orb::Models::PriceModel::MatrixWithAllocationPrice,
              Orb::Models::PriceModel::TieredWithProrationPrice,
              Orb::Models::PriceModel::UnitWithProrationPrice,
              Orb::Models::PriceModel::GroupedAllocationPrice,
              Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
              Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
              Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
              Orb::Models::PriceModel::BulkWithProrationPrice,
              Orb::Models::PriceModel::GroupedTieredPackagePrice,
              Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
              Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::PriceModel::CumulativeGroupedBulkPrice
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::PriceModel::UnitPrice,
                Orb::Models::PriceModel::PackagePrice,
                Orb::Models::PriceModel::MatrixPrice,
                Orb::Models::PriceModel::TieredPrice,
                Orb::Models::PriceModel::TieredBpsPrice,
                Orb::Models::PriceModel::BpsPrice,
                Orb::Models::PriceModel::BulkBpsPrice,
                Orb::Models::PriceModel::BulkPrice,
                Orb::Models::PriceModel::ThresholdTotalAmountPrice,
                Orb::Models::PriceModel::TieredPackagePrice,
                Orb::Models::PriceModel::GroupedTieredPrice,
                Orb::Models::PriceModel::TieredWithMinimumPrice,
                Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
                Orb::Models::PriceModel::PackageWithAllocationPrice,
                Orb::Models::PriceModel::UnitWithPercentPrice,
                Orb::Models::PriceModel::MatrixWithAllocationPrice,
                Orb::Models::PriceModel::TieredWithProrationPrice,
                Orb::Models::PriceModel::UnitWithProrationPrice,
                Orb::Models::PriceModel::GroupedAllocationPrice,
                Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
                Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
                Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
                Orb::Models::PriceModel::BulkWithProrationPrice,
                Orb::Models::PriceModel::GroupedTieredPackagePrice,
                Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
                Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::PriceModel::CumulativeGroupedBulkPrice
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
            Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem,
            Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem,
            Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem
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
            Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem,
            Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem,
            Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem
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

      sig { returns(T::Array[Orb::Models::TaxAmountModel]) }
      def tax_amounts
      end

      sig { params(_: T::Array[Orb::Models::TaxAmountModel]).returns(T::Array[Orb::Models::TaxAmountModel]) }
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
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment,
            Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment
          )
          ],
          amount: String,
          credits_applied: String,
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          end_date: Time,
          filter: T.nilable(String),
          grouping: T.nilable(String),
          maximum: T.nilable(Orb::Models::MaximumModel),
          maximum_amount: T.nilable(String),
          minimum: T.nilable(Orb::Models::MinimumModel),
          minimum_amount: T.nilable(String),
          name: String,
          partially_invoiced_amount: String,
          price: T.nilable(
            T.any(
              Orb::Models::PriceModel::UnitPrice,
              Orb::Models::PriceModel::PackagePrice,
              Orb::Models::PriceModel::MatrixPrice,
              Orb::Models::PriceModel::TieredPrice,
              Orb::Models::PriceModel::TieredBpsPrice,
              Orb::Models::PriceModel::BpsPrice,
              Orb::Models::PriceModel::BulkBpsPrice,
              Orb::Models::PriceModel::BulkPrice,
              Orb::Models::PriceModel::ThresholdTotalAmountPrice,
              Orb::Models::PriceModel::TieredPackagePrice,
              Orb::Models::PriceModel::GroupedTieredPrice,
              Orb::Models::PriceModel::TieredWithMinimumPrice,
              Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
              Orb::Models::PriceModel::PackageWithAllocationPrice,
              Orb::Models::PriceModel::UnitWithPercentPrice,
              Orb::Models::PriceModel::MatrixWithAllocationPrice,
              Orb::Models::PriceModel::TieredWithProrationPrice,
              Orb::Models::PriceModel::UnitWithProrationPrice,
              Orb::Models::PriceModel::GroupedAllocationPrice,
              Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
              Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
              Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
              Orb::Models::PriceModel::BulkWithProrationPrice,
              Orb::Models::PriceModel::GroupedTieredPackagePrice,
              Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
              Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::PriceModel::CumulativeGroupedBulkPrice
            )
          ),
          quantity: Float,
          start_date: Time,
          sub_line_items: T::Array[
          T.any(
            Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem,
            Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem,
            Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem
          )
          ],
          subtotal: String,
          tax_amounts: T::Array[Orb::Models::TaxAmountModel],
          usage_customer_ids: T.nilable(T::Array[String])
        )
          .void
      end
      def initialize(
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
                Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment,
                Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment,
                Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment,
                Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment,
                Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment
              )
              ],
              amount: String,
              credits_applied: String,
              discount: T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::Discount::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              ),
              end_date: Time,
              filter: T.nilable(String),
              grouping: T.nilable(String),
              maximum: T.nilable(Orb::Models::MaximumModel),
              maximum_amount: T.nilable(String),
              minimum: T.nilable(Orb::Models::MinimumModel),
              minimum_amount: T.nilable(String),
              name: String,
              partially_invoiced_amount: String,
              price: T.nilable(
                T.any(
                  Orb::Models::PriceModel::UnitPrice,
                  Orb::Models::PriceModel::PackagePrice,
                  Orb::Models::PriceModel::MatrixPrice,
                  Orb::Models::PriceModel::TieredPrice,
                  Orb::Models::PriceModel::TieredBpsPrice,
                  Orb::Models::PriceModel::BpsPrice,
                  Orb::Models::PriceModel::BulkBpsPrice,
                  Orb::Models::PriceModel::BulkPrice,
                  Orb::Models::PriceModel::ThresholdTotalAmountPrice,
                  Orb::Models::PriceModel::TieredPackagePrice,
                  Orb::Models::PriceModel::GroupedTieredPrice,
                  Orb::Models::PriceModel::TieredWithMinimumPrice,
                  Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
                  Orb::Models::PriceModel::PackageWithAllocationPrice,
                  Orb::Models::PriceModel::UnitWithPercentPrice,
                  Orb::Models::PriceModel::MatrixWithAllocationPrice,
                  Orb::Models::PriceModel::TieredWithProrationPrice,
                  Orb::Models::PriceModel::UnitWithProrationPrice,
                  Orb::Models::PriceModel::GroupedAllocationPrice,
                  Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
                  Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
                  Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
                  Orb::Models::PriceModel::BulkWithProrationPrice,
                  Orb::Models::PriceModel::GroupedTieredPackagePrice,
                  Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
                  Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
                  Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
                  Orb::Models::PriceModel::CumulativeGroupedBulkPrice
                )
              ),
              quantity: Float,
              start_date: Time,
              sub_line_items: T::Array[
              T.any(
                Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem,
                Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem,
                Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem
              )
              ],
              subtotal: String,
              tax_amounts: T::Array[Orb::Models::TaxAmountModel],
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
              .void
          end
          def initialize(
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
              .void
          end
          def initialize(
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
              .void
          end
          def initialize(
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
              .void
          end
          def initialize(
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
              .void
          end
          def initialize(
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

        sig do
          override
            .returns(
              [[Symbol, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryUsageDiscountAdjustment], [Symbol, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryAmountDiscountAdjustment], [Symbol, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryPercentageDiscountAdjustment], [Symbol, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMinimumAdjustment], [Symbol, Orb::Models::InvoiceLineItemModel::Adjustment::MonetaryMaximumAdjustment]]
            )
        end
        private_class_method def self.variants
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

          sig { returns(T.nilable(Orb::Models::SubLineItemGroupingModel)) }
          def grouping
          end

          sig do
            params(_: T.nilable(Orb::Models::SubLineItemGroupingModel))
              .returns(T.nilable(Orb::Models::SubLineItemGroupingModel))
          end
          def grouping=(_)
          end

          sig { returns(Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig) }
          def matrix_config
          end

          sig do
            params(_: Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig)
              .returns(Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig)
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
              grouping: T.nilable(Orb::Models::SubLineItemGroupingModel),
              matrix_config: Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig,
              name: String,
              quantity: Float,
              type: Symbol
            )
              .void
          end
          def initialize(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix)
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::SubLineItemGroupingModel),
                  matrix_config: Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem::MatrixConfig,
                  name: String,
                  quantity: Float,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class MatrixConfig < Orb::BaseModel
            sig { returns(T::Array[T.nilable(String)]) }
            def dimension_values
            end

            sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
            def dimension_values=(_)
            end

            sig { params(dimension_values: T::Array[T.nilable(String)]).void }
            def initialize(dimension_values:)
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

          sig { returns(T.nilable(Orb::Models::SubLineItemGroupingModel)) }
          def grouping
          end

          sig do
            params(_: T.nilable(Orb::Models::SubLineItemGroupingModel))
              .returns(T.nilable(Orb::Models::SubLineItemGroupingModel))
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

          sig { returns(Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem::TierConfig) }
          def tier_config
          end

          sig do
            params(_: Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem::TierConfig)
              .returns(Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem::TierConfig)
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
              grouping: T.nilable(Orb::Models::SubLineItemGroupingModel),
              name: String,
              quantity: Float,
              tier_config: Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem::TierConfig,
              type: Symbol
            )
              .void
          end
          def initialize(amount:, grouping:, name:, quantity:, tier_config:, type: :tier)
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::SubLineItemGroupingModel),
                  name: String,
                  quantity: Float,
                  tier_config: Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem::TierConfig,
                  type: Symbol
                }
              )
          end
          def to_hash
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

            sig { params(first_unit: Float, last_unit: T.nilable(Float), unit_amount: String).void }
            def initialize(first_unit:, last_unit:, unit_amount:)
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

          sig { returns(T.nilable(Orb::Models::SubLineItemGroupingModel)) }
          def grouping
          end

          sig do
            params(_: T.nilable(Orb::Models::SubLineItemGroupingModel))
              .returns(T.nilable(Orb::Models::SubLineItemGroupingModel))
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
              grouping: T.nilable(Orb::Models::SubLineItemGroupingModel),
              name: String,
              quantity: Float,
              type: Symbol
            )
              .void
          end
          def initialize(amount:, grouping:, name:, quantity:, type: :"'null'")
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::SubLineItemGroupingModel),
                  name: String,
                  quantity: Float,
                  type: Symbol
                }
              )
          end
          def to_hash
          end
        end

        sig do
          override
            .returns(
              [[Symbol, Orb::Models::InvoiceLineItemModel::SubLineItem::MatrixSubLineItem], [Symbol, Orb::Models::InvoiceLineItemModel::SubLineItem::TierSubLineItem], [Symbol, Orb::Models::InvoiceLineItemModel::SubLineItem::OtherSubLineItem]]
            )
        end
        private_class_method def self.variants
        end
      end
    end
  end
end
