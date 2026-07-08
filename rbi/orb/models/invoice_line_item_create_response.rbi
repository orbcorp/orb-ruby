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

      # The line amount before any adjustments.
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
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::OrHash,
                Orb::MonetaryMinimumAdjustment::OrHash,
                Orb::MonetaryMaximumAdjustment::OrHash
              )
            ],
          amount: String,
          credits_applied: String,
          end_date: Time,
          filter: T.nilable(String),
          grouping: T.nilable(String),
          name: String,
          partially_invoiced_amount: String,
          price:
            T.any(
              Orb::Price::Unit::OrHash,
              Orb::Price::Tiered::OrHash,
              Orb::Price::Bulk::OrHash,
              Orb::Price::BulkWithFilters::OrHash,
              Orb::Price::Package::OrHash,
              Orb::Price::Matrix::OrHash,
              Orb::Price::ThresholdTotalAmount::OrHash,
              Orb::Price::TieredPackage::OrHash,
              Orb::Price::TieredWithMinimum::OrHash,
              Orb::Price::GroupedTiered::OrHash,
              Orb::Price::TieredPackageWithMinimum::OrHash,
              Orb::Price::PackageWithAllocation::OrHash,
              Orb::Price::UnitWithPercent::OrHash,
              Orb::Price::MatrixWithAllocation::OrHash,
              Orb::Price::MatrixWithThresholdDiscounts::OrHash,
              Orb::Price::TieredWithProration::OrHash,
              Orb::Price::UnitWithProration::OrHash,
              Orb::Price::GroupedAllocation::OrHash,
              Orb::Price::BulkWithProration::OrHash,
              Orb::Price::GroupedWithProratedMinimum::OrHash,
              Orb::Price::GroupedWithMeteredMinimum::OrHash,
              Orb::Price::GroupedWithMinMaxThresholds::OrHash,
              Orb::Price::MatrixWithDisplayName::OrHash,
              Orb::Price::GroupedTieredPackage::OrHash,
              Orb::Price::MaxGroupTieredPackage::OrHash,
              Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
              Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
              Orb::Price::CumulativeGroupedBulk::OrHash,
              Orb::Price::CumulativeGroupedAllocation::OrHash,
              Orb::Price::DailyCreditAllowance::OrHash,
              Orb::Price::MeteredAllowance::OrHash,
              Orb::Price::MinimumComposite::OrHash,
              Orb::Price::Percent::OrHash,
              Orb::Price::EventOutput::OrHash
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
        # The end date of the range of time applied for this line item's price.
        end_date:,
        # An additional filter that was used to calculate the usage for this line item.
        filter:,
        # [DEPRECATED] For configured prices that are split by a grouping key, this will
        # be populated with the key and a value. The `amount` and `subtotal` will be the
        # values for this particular grouping.
        grouping:,
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
        # The line amount before any adjustments.
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
            end_date: Time,
            filter: T.nilable(String),
            grouping: T.nilable(String),
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
              Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount,
              Orb::MonetaryMinimumAdjustment,
              Orb::MonetaryMaximumAdjustment
            )
          end

        class TieredPercentageDiscount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount,
                Orb::Internal::AnyHash
              )
            end

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

          # The filters that determine which prices to apply this adjustment to.
          sig do
            returns(
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter
              ]
            )
          end
          attr_accessor :filters

          # True for adjustments that apply to an entire invoice, false for adjustments that
          # apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # The adjustment id this adjustment replaces. This adjustment will take the place
          # of the replaced adjustment in plan version migrations.
          sig { returns(T.nilable(String)) }
          attr_accessor :replaces_adjustment_id

          # The ordered, contiguous bands of cumulative eligible spend, each discounted at
          # its own percentage (progressive fill-a-tier), applied to the prices this
          # adjustment covers in a given billing period.
          sig do
            returns(
              T::Array[
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Tier
              ]
            )
          end
          attr_accessor :tiers

          sig do
            params(
              id: String,
              amount: String,
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::OrHash
                ],
              is_invoice_level: T::Boolean,
              reason: T.nilable(String),
              replaces_adjustment_id: T.nilable(String),
              tiers:
                T::Array[
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Tier::OrHash
                ],
              adjustment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The value applied by an adjustment.
            amount:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # The filters that determine which prices to apply this adjustment to.
            filters:,
            # True for adjustments that apply to an entire invoice, false for adjustments that
            # apply to only one price.
            is_invoice_level:,
            # The reason for the adjustment.
            reason:,
            # The adjustment id this adjustment replaces. This adjustment will take the place
            # of the replaced adjustment in plan version migrations.
            replaces_adjustment_id:,
            # The ordered, contiguous bands of cumulative eligible spend, each discounted at
            # its own percentage (progressive fill-a-tier), applied to the prices this
            # adjustment covers in a given billing period.
            tiers:,
            adjustment_type: :tiered_percentage_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                amount: String,
                applies_to_price_ids: T::Array[String],
                filters:
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter
                  ],
                is_invoice_level: T::Boolean,
                reason: T.nilable(String),
                replaces_adjustment_id: T.nilable(String),
                tiers:
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::InvoiceLineItemCreateResponse::Adjustment::TieredPercentageDiscount::Tier,
                  Orb::Internal::AnyHash
                )
              end

            # Exclusive lower bound of cumulative spend for this tier.
            sig { returns(Float) }
            attr_accessor :lower_bound

            # The percentage (between 0 and 1) discounted from spend that falls within this
            # tier.
            sig { returns(Float) }
            attr_accessor :percentage

            # Inclusive upper bound of cumulative spend for this tier; null for the final
            # open-ended tier.
            sig { returns(T.nilable(Float)) }
            attr_accessor :upper_bound

            # One band of a tiered percentage discount. Bounds are denominated in the
            # discount's currency. `lower_bound` is the exclusive start of the band and
            # `upper_bound` is the inclusive end; `upper_bound` is null only for the
            # open-ended final tier.
            sig do
              params(
                lower_bound: Float,
                percentage: Float,
                upper_bound: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Exclusive lower bound of cumulative spend for this tier.
              lower_bound:,
              # The percentage (between 0 and 1) discounted from spend that falls within this
              # tier.
              percentage:,
              # Inclusive upper bound of cumulative spend for this tier; null for the final
              # open-ended tier.
              upper_bound: nil
            )
            end

            sig do
              override.returns(
                {
                  lower_bound: Float,
                  percentage: Float,
                  upper_bound: T.nilable(Float)
                }
              )
            end
            def to_hash
            end
          end
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
