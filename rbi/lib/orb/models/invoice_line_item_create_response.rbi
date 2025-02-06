# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateResponse < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :adjusted_subtotal

      sig do
        returns(
          T::Array[T.any(
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscountAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MinimumAdjustment,
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MaximumAdjustment
          )]
        )
      end
      attr_accessor :adjustments

      sig { returns(String) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :credits_applied

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
      attr_accessor :discount

      sig { returns(Time) }
      attr_accessor :end_date

      sig { returns(T.nilable(String)) }
      attr_accessor :grouping

      sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum)) }
      attr_accessor :maximum

      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum)) }
      attr_accessor :minimum

      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :partially_invoiced_amount

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
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
            )
          )
        )
      end
      attr_accessor :price

      sig { returns(Float) }
      attr_accessor :quantity

      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        returns(
          T::Array[T.any(
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem,
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem,
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
          )]
        )
      end
      attr_accessor :sub_line_items

      sig { returns(String) }
      attr_accessor :subtotal

      sig { returns(T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount]) }
      attr_accessor :tax_amounts

      sig do
        params(
          id: String,
          adjusted_subtotal: String,
          adjustments: T::Array[T.any(
            Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MinimumAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MaximumAdjustment
          )],
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
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
            )
          ),
          quantity: Float,
          start_date: Time,
          sub_line_items: T::Array[T.any(
            Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
          )],
          subtotal: String,
          tax_amounts: T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount]
        ).void
      end
      def initialize(
        id:,
        adjusted_subtotal:,
        adjustments:,
        amount:,
        credits_applied:,
        discount:,
        end_date:,
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
        tax_amounts:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjusted_subtotal: String,
            adjustments: T::Array[T.any(
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscountAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MinimumAdjustment, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MaximumAdjustment
            )],
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
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
              )
            ),
            quantity: Float,
            start_date: Time,
            sub_line_items: T::Array[T.any(
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem
            )],
            subtotal: String,
            tax_amounts: T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount]
          }
        )
      end
      def to_hash
      end

      class Adjustment < Orb::Union
        abstract!

        class AmountDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(String) }
          attr_accessor :amount_discount

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            amount_discount:,
            applies_to_price_ids:,
            is_invoice_level:,
            plan_phase_order:,
            reason:,
            adjustment_type: :amount_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class PercentageDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              percentage_discount: Float,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            percentage_discount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :percentage_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                percentage_discount: Float,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class UsageDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig { returns(Float) }
          attr_accessor :usage_discount

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              usage_discount: Float,
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            plan_phase_order:,
            reason:,
            usage_discount:,
            adjustment_type: :usage_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String),
                usage_discount: Float
              }
            )
          end
          def to_hash
          end
        end

        class MinimumAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(String) }
          attr_accessor :minimum_amount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              item_id: String,
              minimum_amount: String,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            item_id:,
            minimum_amount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :minimum
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                item_id: String,
                minimum_amount: String,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class MaximumAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              maximum_amount: String,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            maximum_amount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :maximum
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                maximum_amount: String,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            [
              [
                Symbol,
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscountAdjustment
              ],
              [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscountAdjustment],
              [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscountAdjustment],
              [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MinimumAdjustment],
              [Symbol, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::MaximumAdjustment]
            ]
          )
        end
        private_class_method def self.variants
        end
      end

      class Maximum < Orb::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(String) }
        attr_accessor :maximum_amount

        sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
        def initialize(applies_to_price_ids:, maximum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash
        end
      end

      class Minimum < Orb::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(String) }
        attr_accessor :minimum_amount

        sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
        def initialize(applies_to_price_ids:, minimum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash
        end
      end

      class SubLineItem < Orb::Union
        abstract!

        class MatrixSubLineItem < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :amount

          sig do
            returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping))
          end
          attr_accessor :grouping

          sig do
            returns(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig)
          end
          attr_accessor :matrix_config

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::Grouping),
              matrix_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem::MatrixConfig,
              name: String,
              quantity: Float,
              type: Symbol
            ).void
          end
          def initialize(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix)
          end

          sig do
            override.returns(
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
            attr_accessor :key

            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig { params(key: String, value: T.nilable(String)).void }
            def initialize(key:, value:)
            end

            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash
            end
          end

          class MatrixConfig < Orb::BaseModel
            sig { returns(T::Array[T.nilable(String)]) }
            attr_accessor :dimension_values

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
          attr_accessor :amount

          sig do
            returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping))
          end
          attr_accessor :grouping

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig do
            returns(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig)
          end
          attr_accessor :tier_config

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::Grouping),
              name: String,
              quantity: Float,
              tier_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem::TierConfig,
              type: Symbol
            ).void
          end
          def initialize(amount:, grouping:, name:, quantity:, tier_config:, type: :tier)
          end

          sig do
            override.returns(
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
            attr_accessor :key

            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig { params(key: String, value: T.nilable(String)).void }
            def initialize(key:, value:)
            end

            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash
            end
          end

          class TierConfig < Orb::BaseModel
            sig { returns(Float) }
            attr_accessor :first_unit

            sig { returns(T.nilable(Float)) }
            attr_accessor :last_unit

            sig { returns(String) }
            attr_accessor :unit_amount

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
          attr_accessor :amount

          sig do
            returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping))
          end
          attr_accessor :grouping

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem::Grouping),
              name: String,
              quantity: Float,
              type: Symbol
            ).void
          end
          def initialize(amount:, grouping:, name:, quantity:, type: :"'null'")
          end

          sig do
            override.returns(
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
            attr_accessor :key

            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig { params(key: String, value: T.nilable(String)).void }
            def initialize(key:, value:)
            end

            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash
            end
          end
        end

        sig do
          override.returns(
            [
              [Symbol, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::MatrixSubLineItem],
              [Symbol, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::TierSubLineItem],
              [Symbol, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::OtherSubLineItem]
            ]
          )
        end
        private_class_method def self.variants
        end
      end

      class TaxAmount < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :tax_rate_description

        sig { returns(T.nilable(String)) }
        attr_accessor :tax_rate_percentage

        sig do
          params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String)).void
        end
        def initialize(amount:, tax_rate_description:, tax_rate_percentage:)
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
