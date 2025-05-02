# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateResponse < Orb::Internal::Type::BaseModel
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
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum
            )
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
      sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Maximum)) }
      attr_reader :maximum

      sig do
        params(
          maximum: T.nilable(T.any(Orb::Models::InvoiceLineItemCreateResponse::Maximum, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :maximum

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      # This field is deprecated in favor of `adjustments`.
      sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::Minimum)) }
      attr_reader :minimum

      sig do
        params(
          minimum: T.nilable(T.any(Orb::Models::InvoiceLineItemCreateResponse::Minimum, Orb::Internal::AnyHash))
        )
          .void
      end
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
      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::Price::Unit,
              Orb::Models::Price::Package,
              Orb::Models::Price::Matrix,
              Orb::Models::Price::Tiered,
              Orb::Models::Price::TieredBps,
              Orb::Models::Price::Bps,
              Orb::Models::Price::BulkBps,
              Orb::Models::Price::Bulk,
              Orb::Models::Price::ThresholdTotalAmount,
              Orb::Models::Price::TieredPackage,
              Orb::Models::Price::GroupedTiered,
              Orb::Models::Price::TieredWithMinimum,
              Orb::Models::Price::TieredPackageWithMinimum,
              Orb::Models::Price::PackageWithAllocation,
              Orb::Models::Price::UnitWithPercent,
              Orb::Models::Price::MatrixWithAllocation,
              Orb::Models::Price::TieredWithProration,
              Orb::Models::Price::UnitWithProration,
              Orb::Models::Price::GroupedAllocation,
              Orb::Models::Price::GroupedWithProratedMinimum,
              Orb::Models::Price::GroupedWithMeteredMinimum,
              Orb::Models::Price::MatrixWithDisplayName,
              Orb::Models::Price::BulkWithProration,
              Orb::Models::Price::GroupedTieredPackage,
              Orb::Models::Price::MaxGroupTieredPackage,
              Orb::Models::Price::ScalableMatrixWithUnitPricing,
              Orb::Models::Price::ScalableMatrixWithTieredPricing,
              Orb::Models::Price::CumulativeGroupedBulk
            )
          )
        )
      end
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
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null
            )
          ]
        )
      end
      attr_accessor :sub_line_items

      # The line amount before before any adjustments.
      sig { returns(String) }
      attr_accessor :subtotal

      # An array of tax rates and their incurred tax amounts. Empty if no tax
      # integration is configured.
      sig { returns(T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount]) }
      attr_accessor :tax_amounts

      # A list of customer ids that were used to calculate the usage for this line item.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :usage_customer_ids

      sig do
        params(
          id: String,
          adjusted_subtotal: String,
          adjustments: T::Array[
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount,
              Orb::Internal::AnyHash,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum,
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum
            )
          ],
          amount: String,
          credits_applied: String,
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Internal::AnyHash,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          end_date: Time,
          filter: T.nilable(String),
          grouping: T.nilable(String),
          maximum: T.nilable(T.any(Orb::Models::InvoiceLineItemCreateResponse::Maximum, Orb::Internal::AnyHash)),
          maximum_amount: T.nilable(String),
          minimum: T.nilable(T.any(Orb::Models::InvoiceLineItemCreateResponse::Minimum, Orb::Internal::AnyHash)),
          minimum_amount: T.nilable(String),
          name: String,
          partially_invoiced_amount: String,
          price: T.nilable(
            T.any(
              Orb::Models::Price::Unit,
              Orb::Internal::AnyHash,
              Orb::Models::Price::Package,
              Orb::Models::Price::Matrix,
              Orb::Models::Price::Tiered,
              Orb::Models::Price::TieredBps,
              Orb::Models::Price::Bps,
              Orb::Models::Price::BulkBps,
              Orb::Models::Price::Bulk,
              Orb::Models::Price::ThresholdTotalAmount,
              Orb::Models::Price::TieredPackage,
              Orb::Models::Price::GroupedTiered,
              Orb::Models::Price::TieredWithMinimum,
              Orb::Models::Price::TieredPackageWithMinimum,
              Orb::Models::Price::PackageWithAllocation,
              Orb::Models::Price::UnitWithPercent,
              Orb::Models::Price::MatrixWithAllocation,
              Orb::Models::Price::TieredWithProration,
              Orb::Models::Price::UnitWithProration,
              Orb::Models::Price::GroupedAllocation,
              Orb::Models::Price::GroupedWithProratedMinimum,
              Orb::Models::Price::GroupedWithMeteredMinimum,
              Orb::Models::Price::MatrixWithDisplayName,
              Orb::Models::Price::BulkWithProration,
              Orb::Models::Price::GroupedTieredPackage,
              Orb::Models::Price::MaxGroupTieredPackage,
              Orb::Models::Price::ScalableMatrixWithUnitPricing,
              Orb::Models::Price::ScalableMatrixWithTieredPricing,
              Orb::Models::Price::CumulativeGroupedBulk
            )
          ),
          quantity: Float,
          start_date: Time,
          sub_line_items: T::Array[
            T.any(
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix,
              Orb::Internal::AnyHash,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier,
              Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null
            )
          ],
          subtotal: String,
          tax_amounts: T::Array[T.any(Orb::Models::InvoiceLineItemCreateResponse::TaxAmount, Orb::Internal::AnyHash)],
          usage_customer_ids: T.nilable(T::Array[String])
        )
          .returns(T.attached_class)
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
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              adjusted_subtotal: String,
              adjustments: T::Array[
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum
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
                  Orb::Models::Price::Unit,
                  Orb::Models::Price::Package,
                  Orb::Models::Price::Matrix,
                  Orb::Models::Price::Tiered,
                  Orb::Models::Price::TieredBps,
                  Orb::Models::Price::Bps,
                  Orb::Models::Price::BulkBps,
                  Orb::Models::Price::Bulk,
                  Orb::Models::Price::ThresholdTotalAmount,
                  Orb::Models::Price::TieredPackage,
                  Orb::Models::Price::GroupedTiered,
                  Orb::Models::Price::TieredWithMinimum,
                  Orb::Models::Price::TieredPackageWithMinimum,
                  Orb::Models::Price::PackageWithAllocation,
                  Orb::Models::Price::UnitWithPercent,
                  Orb::Models::Price::MatrixWithAllocation,
                  Orb::Models::Price::TieredWithProration,
                  Orb::Models::Price::UnitWithProration,
                  Orb::Models::Price::GroupedAllocation,
                  Orb::Models::Price::GroupedWithProratedMinimum,
                  Orb::Models::Price::GroupedWithMeteredMinimum,
                  Orb::Models::Price::MatrixWithDisplayName,
                  Orb::Models::Price::BulkWithProration,
                  Orb::Models::Price::GroupedTieredPackage,
                  Orb::Models::Price::MaxGroupTieredPackage,
                  Orb::Models::Price::ScalableMatrixWithUnitPricing,
                  Orb::Models::Price::ScalableMatrixWithTieredPricing,
                  Orb::Models::Price::CumulativeGroupedBulk
                )
              ),
              quantity: Float,
              start_date: Time,
              sub_line_items: T::Array[
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix,
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier,
                  Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null
                )
              ],
              subtotal: String,
              tax_amounts: T::Array[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount],
              usage_customer_ids: T.nilable(T::Array[String])
            }
          )
      end
      def to_hash; end

      module Adjustment
        extend Orb::Internal::Type::Union

        class UsageDiscount < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # The number of usage units by which to discount the price this adjustment applies
          # to in a given billing period.
          sig { returns(Float) }
          attr_accessor :usage_discount

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
            # The value applied by an adjustment.
            amount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The reason for the adjustment.
            reason:,
            # The number of usage units by which to discount the price this adjustment applies
            # to in a given billing period.
            usage_discount:,
            adjustment_type: :usage_discount
          ); end
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
          def to_hash; end
        end

        class AmountDiscount < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The amount by which to discount the prices this adjustment applies to in a given
          # billing period.
          sig { returns(String) }
          attr_accessor :amount_discount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

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
            # The value applied by an adjustment.
            amount:,
            # The amount by which to discount the prices this adjustment applies to in a given
            # billing period.
            amount_discount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The reason for the adjustment.
            reason:,
            adjustment_type: :amount_discount
          ); end
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
          def to_hash; end
        end

        class PercentageDiscount < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The percentage (as a value between 0 and 1) by which to discount the price
          # intervals this adjustment applies to in a given billing period.
          sig { returns(Float) }
          attr_accessor :percentage_discount

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

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
            # The value applied by an adjustment.
            amount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The percentage (as a value between 0 and 1) by which to discount the price
            # intervals this adjustment applies to in a given billing period.
            percentage_discount:,
            # The reason for the adjustment.
            reason:,
            adjustment_type: :percentage_discount
          ); end
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
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The item ID that revenue from this minimum will be attributed to.
          sig { returns(String) }
          attr_accessor :item_id

          # The minimum amount to charge in a given billing period for the prices this
          # adjustment applies to.
          sig { returns(String) }
          attr_accessor :minimum_amount

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

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
            # The value applied by an adjustment.
            amount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The item ID that revenue from this minimum will be attributed to.
            item_id:,
            # The minimum amount to charge in a given billing period for the prices this
            # adjustment applies to.
            minimum_amount:,
            # The reason for the adjustment.
            reason:,
            adjustment_type: :minimum
          ); end
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
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The value applied by an adjustment.
          sig { returns(String) }
          attr_accessor :amount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The maximum amount to charge in a given billing period for the prices this
          # adjustment applies to.
          sig { returns(String) }
          attr_accessor :maximum_amount

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

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
            # The value applied by an adjustment.
            amount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            is_invoice_level:,
            # The maximum amount to charge in a given billing period for the prices this
            # adjustment applies to.
            maximum_amount:,
            # The reason for the adjustment.
            reason:,
            adjustment_type: :maximum
          ); end
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
          def to_hash; end
        end

        sig do
          override
            .returns(
              [Orb::Models::InvoiceLineItemCreateResponse::Adjustment::UsageDiscount, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::AmountDiscount, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::PercentageDiscount, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Minimum, Orb::Models::InvoiceLineItemCreateResponse::Adjustment::Maximum]
            )
        end
        def self.variants; end
      end

      class Maximum < Orb::Internal::Type::BaseModel
        # List of price_ids that this maximum amount applies to. For plan/plan phase
        # maximums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # Maximum amount applied
        sig { returns(String) }
        attr_accessor :maximum_amount

        # This field is deprecated in favor of `adjustments`.
        sig do
          params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
        end
        def self.new(
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          applies_to_price_ids:,
          # Maximum amount applied
          maximum_amount:
        ); end
        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash; end
      end

      class Minimum < Orb::Internal::Type::BaseModel
        # List of price_ids that this minimum amount applies to. For plan/plan phase
        # minimums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # Minimum amount applied
        sig { returns(String) }
        attr_accessor :minimum_amount

        # This field is deprecated in favor of `adjustments`.
        sig do
          params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
        end
        def self.new(
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          applies_to_price_ids:,
          # Minimum amount applied
          minimum_amount:
        ); end
        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash; end
      end

      module SubLineItem
        extend Orb::Internal::Type::Union

        class Matrix < Orb::Internal::Type::BaseModel
          # The total amount for this sub line item.
          sig { returns(String) }
          attr_accessor :amount

          sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping)) }
          attr_reader :grouping

          sig do
            params(
              grouping: T.nilable(
                T.any(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping, Orb::Internal::AnyHash)
              )
            )
              .void
          end
          attr_writer :grouping

          sig { returns(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig) }
          attr_reader :matrix_config

          sig do
            params(
              matrix_config: T.any(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig,
                Orb::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :matrix_config

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping: T.nilable(
                T.any(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping, Orb::Internal::AnyHash)
              ),
              matrix_config: T.any(
                Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig,
                Orb::Internal::AnyHash
              ),
              name: String,
              quantity: Float,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The total amount for this sub line item.
            amount:,
            grouping:,
            matrix_config:,
            name:,
            quantity:,
            type: :matrix
          ); end
          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::Grouping),
                  matrix_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix::MatrixConfig,
                  name: String,
                  quantity: Float,
                  type: Symbol
                }
              )
          end
          def to_hash; end

          class Grouping < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :key

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
            def self.new(
              key:,
              # No value indicates the default group
              value:
            ); end
            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash; end
          end

          class MatrixConfig < Orb::Internal::Type::BaseModel
            # The ordered dimension values for this line item.
            sig { returns(T::Array[T.nilable(String)]) }
            attr_accessor :dimension_values

            sig { params(dimension_values: T::Array[T.nilable(String)]).returns(T.attached_class) }
            def self.new(
              # The ordered dimension values for this line item.
              dimension_values:
            ); end
            sig { override.returns({dimension_values: T::Array[T.nilable(String)]}) }
            def to_hash; end
          end
        end

        class Tier < Orb::Internal::Type::BaseModel
          # The total amount for this sub line item.
          sig { returns(String) }
          attr_accessor :amount

          sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping)) }
          attr_reader :grouping

          sig do
            params(
              grouping: T.nilable(
                T.any(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping, Orb::Internal::AnyHash)
              )
            )
              .void
          end
          attr_writer :grouping

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig) }
          attr_reader :tier_config

          sig do
            params(
              tier_config: T.any(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig, Orb::Internal::AnyHash)
            )
              .void
          end
          attr_writer :tier_config

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping: T.nilable(
                T.any(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping, Orb::Internal::AnyHash)
              ),
              name: String,
              quantity: Float,
              tier_config: T.any(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig, Orb::Internal::AnyHash),
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The total amount for this sub line item.
            amount:,
            grouping:,
            name:,
            quantity:,
            tier_config:,
            type: :tier
          ); end
          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::Grouping),
                  name: String,
                  quantity: Float,
                  tier_config: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier::TierConfig,
                  type: Symbol
                }
              )
          end
          def to_hash; end

          class Grouping < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :key

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
            def self.new(
              key:,
              # No value indicates the default group
              value:
            ); end
            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash; end
          end

          class TierConfig < Orb::Internal::Type::BaseModel
            sig { returns(Float) }
            attr_accessor :first_unit

            sig { returns(T.nilable(Float)) }
            attr_accessor :last_unit

            sig { returns(String) }
            attr_accessor :unit_amount

            sig do
              params(
                first_unit: Float,
                last_unit: T.nilable(Float),
                unit_amount: String
              ).returns(T.attached_class)
            end
            def self.new(first_unit:, last_unit:, unit_amount:); end

            sig { override.returns({first_unit: Float, last_unit: T.nilable(Float), unit_amount: String}) }
            def to_hash; end
          end
        end

        class Null < Orb::Internal::Type::BaseModel
          # The total amount for this sub line item.
          sig { returns(String) }
          attr_accessor :amount

          sig { returns(T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping)) }
          attr_reader :grouping

          sig do
            params(
              grouping: T.nilable(
                T.any(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping, Orb::Internal::AnyHash)
              )
            )
              .void
          end
          attr_writer :grouping

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: String,
              grouping: T.nilable(
                T.any(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping, Orb::Internal::AnyHash)
              ),
              name: String,
              quantity: Float,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The total amount for this sub line item.
            amount:,
            grouping:,
            name:,
            quantity:,
            type: :"'null'"
          ); end
          sig do
            override
              .returns(
                {
                  amount: String,
                  grouping: T.nilable(Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null::Grouping),
                  name: String,
                  quantity: Float,
                  type: Symbol
                }
              )
          end
          def to_hash; end

          class Grouping < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :key

            # No value indicates the default group
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
            def self.new(
              key:,
              # No value indicates the default group
              value:
            ); end
            sig { override.returns({key: String, value: T.nilable(String)}) }
            def to_hash; end
          end
        end

        sig do
          override
            .returns(
              [Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Matrix, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Tier, Orb::Models::InvoiceLineItemCreateResponse::SubLineItem::Null]
            )
        end
        def self.variants; end
      end

      class TaxAmount < Orb::Internal::Type::BaseModel
        # The amount of additional tax incurred by this tax rate.
        sig { returns(String) }
        attr_accessor :amount

        # The human-readable description of the applied tax rate.
        sig { returns(String) }
        attr_accessor :tax_rate_description

        # The tax rate percentage, out of 100.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_rate_percentage

        sig do
          params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(
          # The amount of additional tax incurred by this tax rate.
          amount:,
          # The human-readable description of the applied tax rate.
          tax_rate_description:,
          # The tax rate percentage, out of 100.
          tax_rate_percentage:
        ); end
        sig do
          override.returns(
            {
              amount: String,
              tax_rate_description: String,
              tax_rate_percentage: T.nilable(String)
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
